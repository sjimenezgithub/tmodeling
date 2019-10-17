#! /usr/bin/env python3
import os, sys, itertools, collections, random
import pddl, pddl_parser
import fdtask_to_pddl, planning

sys.path.insert(0, '/home/slimbook/research/tmodeling/src/meta-planning/src/')
from meta_planning.parsers import parse_trajectory, parse_model
from meta_planning.compilation import generate_model_representation_fluents

class PlanStep:
    def __init__(self, n, o, st, b, d, op, ap, m):
        self.name = n
        self.operator = o
        self.stime = st
        self.block = b        
        self.durations = d
        self.oparams = op
        self.aparams = ap
        self.model = model

    def get_precs(self):        
        possible_pres = set()

        for scheme in self.model.schemata:
            if scheme.name == self.operator.name:
                aux_scheme = scheme
        
        for p in generate_model_representation_fluents(aux_scheme, self.model.predicates, self.model.types):
            if "pre_"+self.operator.name+"_" in str(p) and not "_=_" in str(p):
                possible_pres.add(str(p).replace("pre_"+self.operator.name+"_",""))

        index=1
        str_out=""
        for p in possible_pres:
            aux=p            
            for i in range(len(self.oparams)):
                aux=aux.replace("_var"+str(i+1),"_"+self.aparams[i])
                aux=aux.replace(" ","")
            if index==len(possible_pres):
                str_out= str_out + str(index) + " " + aux 
            else:
                str_out= str_out + str(index) + " " + aux+ " & "
            index = index + 1
        return str_out
    

    def get_effs(self):
        possible_pres = set()

        for scheme in self.model.schemata:
            if scheme.name == self.operator.name:
                aux_scheme = scheme
        
        for p in generate_model_representation_fluents(aux_scheme, self.model.predicates, self.model.types):
            if "pre_"+self.operator.name+"_" in str(p) and not "_=_" in str(p):
                possible_pres.add(str(p).replace("pre_"+self.operator.name+"_",""))
        
        index = len(self.get_precs().split("&")) + 1
        str_out=""
        for p in possible_pres:
            aux=p            
            for i in range(len(self.oparams)):
                aux=aux.replace("_var"+str(i+1),"_"+self.aparams[i])
                aux=aux.replace(" ","")
            str_out= str_out + str(index) + " " + aux+ " & "
            index = index + 1
            if index==3*len(possible_pres):
                str_out= str_out + str(index) + " " + "not-" + aux 
            else:
                str_out= str_out + str(index) + " " + "not-" + aux + " & "                
            index = index + 1            
        
        return str_out
    

    def __str__(self):
        str_out = ""
        str_out = str_out + "action:\n"
        str_out = str_out + self.name + "\n"        
        str_out = str_out + "operator:\n"
        str_out = str_out + self.operator.name + "\n"        
        str_out = str_out + "start_time:\n"
        str_out = str_out + str(self.stime + self.block) + "\n"                
        str_out = str_out + "durations:\n"
        str_out = str_out + str(self.durations).replace("[","").replace("]","").replace(",","") + "\n"
        
        str_out = str_out + "precs:\n"
        str_precs = self.get_precs() + "\n"
        str_out = str_out + str_precs
        
        str_out = str_out + "effs:\n"
        str_effs = self.get_effs()
        str_out = str_out + str_effs
            
        return str_out.lower()

    
def filter_literal_string(str_in):
    str_in = str_in.replace("(not","not-").replace("not (","not-(").replace(" ","_").replace("_(","(").replace("))",")")
    return str_in
    

def format_string_literals(str_literals, offset, observability):
    
    index = offset
    for i in range(0,len(str_literals)):
        if random.uniform(0,1) < observability:        
            if index==offset and i==0:
                str_out = str(offset) +" "+ filter_literal_string(str_literals[0]) + ")"
            elif index==offset and i!=0:
                str_out = str(offset) +" ("+ filter_literal_string(str_literals[i]) + ")"                
            else:        
                str_out = str_out + " & " + str(index) + " (" + filter_literal_string(str_literals[i]) + ")"
            index = index + 1
            
    return str_out.replace("))",")").replace("(not-(","not-(")


def get_objects_by_type(typed_objects, types):
    result = collections.defaultdict(list)
    supertypes = {}
    for type in types:
        supertypes[type.name] = type.supertype_names
    for obj in typed_objects:
        result[obj.type_name].append(obj.name)
        for type in supertypes[obj.type_name]:
            result[type].append(obj.name)
    return result


def filter_mutex_string(str_in):
    str_in = "(" + str_in.replace("NegatedAtom ","").replace(", ","_").replace("(","_")
    return str_in


def format_set_of_mutex(set_of_mutex, formated_init):
    list_of_mutex = list(set_of_mutex)
    
    ifound=-1
    for i in range(len(list_of_mutex)):
        if list_of_mutex[i] in formated_init:
            ifound=i
    if ifound==-1:
        return ""
    
    str_out=""    
    for i in range(len(list_of_mutex)):
        str_out = str_out + "constraints:\n"
        str_out = str_out + list_of_mutex[i]
        str_out = str_out + "\nmutex-predicate\n"
        if i==0:
            str_out = str_out + " ".join(list_of_mutex[1:]) + "\n\n"               
        else:
            str_out = str_out + " ".join(list_of_mutex[:i]) + " " + " ".join(list_of_mutex[i+1:]) + "\n\n"
    return str_out

def compute_negated_atoms(predicates,objects,types,str_state,npositive,observability):
    neg_atoms = ""
    for p in predicates:
        if p.name == "=":
            continue
        candidate_objects = []
        for arg in p.arguments:
            candidate_pos=[]
            for o in set(objects):
                aux = [t for t in types if t.name==o.type_name]
                supernames = [str(t.name) for t in aux] + [str(t) for t in aux[0].supertype_names]
                if arg.type_name in supernames:
                    candidate_pos = candidate_pos + [str(o.name)]
            candidate_objects.append(candidate_pos)

        combinations = list(itertools.product(*candidate_objects))
        for item in combinations:
            atom = "(" + p.name + "_" + "_".join(map(str,item)) + ")"
            if not atom in str_state and random.uniform(0,1) < observability:
                npositive = npositive + 1
                neg_atoms = neg_atoms + " & " + str(npositive) + str(" not-(" + p.name + "_" + "_".join(map(str,item)) + ")")
    return neg_atoms


# **************************************#
# MAIN
# **************************************#
try:
    if "-n" in sys.argv:
        index = sys.argv.index("-n")
        sys.argv.pop(index)
        bneg = True
    else:
        bneg = False

    if "-e" in sys.argv:
        index = sys.argv.index("-e")
        sys.argv.pop(index)
        btrunk = True
    else:
        btrunk = False

    if "-d" in sys.argv:
        index = sys.argv.index("-d")
        sys.argv.pop(index)
        bduration = True
    else:
        bduration = False


    if "-o" in sys.argv:
        index = sys.argv.index("-o")
        sys.argv.pop(index)
        observability = float(sys.argv[index])
        sys.argv.pop(index)
    else:
        observability = 0                         
    
    domain_filename  = sys.argv[1]
    problem_filename = sys.argv[2]
    plan_filename = sys.argv[3]
    output_filename = sys.argv[4]    

except:
    print ("Usage:")
    print (sys.argv[0] + " [-n negative facts at initial state, -e trunk the last end line, -d actions duration is known -o observability of last state [0,1]] <domain file name> <problem file name> <plan file name> <output file name>")
    sys.exit(-1)   

str_out = ""

# Creating a meta-planning model
model = parse_model(domain_filename)

# Creating a FD task with the domain and the problem files
print(domain_filename)
fd_domain = pddl_parser.pddl_file.parse_pddl_file("domain", domain_filename)
fd_problem = pddl_parser.pddl_file.parse_pddl_file("task", problem_filename)
fd_task = pddl_parser.pddl_file.parsing_functions.parse_task(fd_domain, fd_problem)


# Domain and problem name
str_out = str_out + "domain:\n"
str_out = str_out + domain_filename + "\n"
str_out = str_out + "\n"

str_out = str_out + "problem:\n"
str_out = str_out + problem_filename + "\n"
str_out = str_out + "\n"

# Init and goals
str_out = str_out + "init:\n"
formattedinit1 = fdtask_to_pddl.format_condition([i for i in fd_task.init if i.predicate!="="])
formattedinit2 = format_string_literals(formattedinit1.split(") ("),1,1).replace(")_)",")")
npositive =  len(formattedinit1.split(") (")) 

if bneg==True: # Completing initial state with negated literals
    neg_atoms = compute_negated_atoms(fd_task.predicates,fd_task.objects,fd_task.types,formattedinit2,npositive,1) 
    str_out = str_out + formattedinit2 + neg_atoms + "\n"
else:
    str_out = str_out + formattedinit2 + "\n"       
str_out = str_out + "\n"


str_out = str_out + "goals:\n"
if observability > 0:
    states=planning.VAL_computation_state_trajectory(domain_filename, problem_filename, plan_filename)
    formattedgoal = format_string_literals(str(states[-1]).split(") ("),1,observability)
    npositive=len(formattedgoal.split("&"))

    if bneg==True: # Completing goals with negated literals
        neg_atoms = compute_negated_atoms(fd_task.predicates,fd_task.objects,fd_task.types,formattedgoal,npositive,observability) 
        str_out = str_out + formattedgoal + neg_atoms + "\n"
    else:
        str_out = str_out + formattedgoal + "\n"
else:
    formattedgoal = fdtask_to_pddl.format_condition(fd_task.goal)
    str_out = str_out + format_string_literals(formattedgoal.replace("(and ","")[:-1].split(")("),1,1)+ "\n"
    

# Reading plan
steps = []
makespan=0
timestamps = set([])
plan_file = open(plan_filename, 'r')
nactions=0
for line in plan_file:
    if not ";" in line and ":" in line:
        nactions = nactions + 1
        
        # Creating a plan step
        start_time = int(line.split(".")[0])
        timestamps.add(start_time)
        
        duration = int(round(float(line.split("[")[1].replace("]",""))))

        aname = line.split(": ")[1].split(" [")[0].replace(" (","(").replace(") ",")").replace(" ","_").replace("_(","(")
        aparams = line.split("(")[1].split(")")[0].split(" ")[1:]

        clean_aname=aname.lower().replace("(","").replace(")","").split("_")[0]        
        operator = [o for o in fd_task.actions if clean_aname==o.name.lower()][0]
        oparams = [str(p.name) for p in operator.parameters]
        
        steps.append(PlanStep(aname,operator, start_time, -1, duration , oparams, aparams,model))
        makespan = max(makespan, int(start_time + duration))
plan_file.close()

# Adding the last timestamp
timestamps.add(makespan)

# Makespan
str_out = str_out + "makespan:\n"
str_out = str_out + str(makespan + len(timestamps))+ "\n"
str_out = str_out + "\n"


# Plan steps
steps.sort(key=lambda x: x.stime)
for s in steps:
    aux_timestamps = sorted(timestamps)
    s.block = aux_timestamps.index(s.stime) + 1
    if not bduration:
        s.durations = [item - s.stime for item in aux_timestamps[aux_timestamps.index(s.stime)+1:]]
    str_out = str_out + str(s)+ "\n\n"  

    
# Instantiate Axioms
for axiom in fd_task.axioms:

    set_of_mutex = set()
    param_names = [i.name for i in axiom.condition.parameters]
    
    types_dic=get_objects_by_type(fd_task.objects, fd_task.types)
    elements = []
    for p in axiom.condition.parameters:
        elements.append(types_dic[p.type_name])

    for item in list(itertools.product(*elements)):
        
        str_constraint = "(" + str(axiom.condition.parts[0].parts[0].predicate)
        for arg in axiom.condition.parts[0].parts[0].args:
            str_constraint = str_constraint + "_"+item[param_names.index(arg)]
        str_constraint = str_constraint + ")"

        str_mutex = "(" + str(axiom.condition.parts[0].parts[1].predicate)
        for arg in axiom.condition.parts[0].parts[1].args:
            str_mutex = str_mutex + "_"+item[param_names.index(arg)]
        str_mutex = str_mutex + ")"


        if len(set_of_mutex)==0 or (str_constraint in set_of_mutex) or (str_mutex in set_of_mutex):
            set_of_mutex.add(str_mutex)
            set_of_mutex.add(str_constraint)
        elif len(set_of_mutex)!=0 and not (str_constraint in set_of_mutex) and not (str_mutex in set_of_mutex):
            str_out = str_out + format_set_of_mutex(set_of_mutex,formattedinit2)               
            set_of_mutex = set()
            set_of_mutex.add(str_mutex)
            set_of_mutex.add(str_constraint)            

    str_out = str_out + format_set_of_mutex(set_of_mutex,formattedinit2)               
    set_of_mutex = set()
    


if not btrunk:    
    str_out = str_out + "\n\nend:\n"

if nactions > 0:
    output_file = open(output_filename, 'w')
    output_file.write(str_out)
    output_file.close()
    
sys.exit(0)




