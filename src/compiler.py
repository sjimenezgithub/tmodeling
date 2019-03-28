#! /usr/bin/env python
import os, sys, itertools
import pddl, pddl_parser
import fdtask_to_pddl

class PlanStep:
    def __init__(self, n, o, st, b, d, op, ap):
        self.name = n
        self.operator = o
        self.stime = st
        self.block = b        
        self.durations = d
        self.oparams = op
        self.aparams = ap

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
        str_precs = fdtask_to_pddl.format_condition(self.operator.precondition)
        for i in range(len(self.oparams)):
            str_precs = str_precs.replace(self.oparams[i],self.aparams[i])                      
        str_out = str_out + format_string_literals(str_precs.replace("(and","").split(")("),1) + "\n"
        
        str_out = str_out + "effs:\n"
        str_effs = ""
        for item in self.operator.effects:
            str_effs = str_effs + fdtask_to_pddl.format_effect(item)
        for i in range(len(self.oparams)):
            str_effs = str_effs.replace(self.oparams[i],self.aparams[i])
        str_out = str_out + format_string_literals(str_effs.split(")("),len(self.operator.precondition.parts)+1)            
            
        return str_out.lower()

    
def filter_literal_string(str_in):
    str_in = str_in.replace("(not","not-").replace("not (","not-(").replace(" ","_").replace("_(","(").replace("))",")")
    return str_in
    

def format_string_literals(str_literals, offset):
    str_out = str(offset) +" "+ filter_literal_string(str_literals[0]) + ")"
    for i in range(1,len(str_literals)):
        str_out = str_out + " & " + str(offset+i) + " (" + filter_literal_string(str_literals[i]) + ")"
    return str_out.replace("))",")").replace("(not-(","not-(")



# **************************************#
# MAIN
# **************************************#
try:
    if "-n" in sys.argv:
        index = sys.argv.index("-n")
        sys.argv.pop(index)
        bneginit = True
    else:
        bneginit = False

    if "-e" in sys.argv:
        index = sys.argv.index("-e")
        sys.argv.pop(index)
        btrunk = True
    else:
        btrunk = False         
    
    domain_filename  = sys.argv[1]
    problem_filename = sys.argv[2]
    plan_filename = sys.argv[3]
   

except:
    print "Usage:"
    print sys.argv[0] + " [-n, negative facts at initial state] <domain file name> <problem file name> <plan file name>"
    sys.exit(-1)


# Creating a FD task with the domain and the problem files
fd_domain = pddl_parser.pddl_file.parse_pddl_file("domain", domain_filename)
fd_problem = pddl_parser.pddl_file.parse_pddl_file("task", problem_filename)
fd_task = pddl_parser.pddl_file.parsing_functions.parse_task(fd_domain, fd_problem)

# Domain and problem name
print "domain:"
print domain_filename
print ""

print "problem:"
print problem_filename
print ""

# Init and goals
print "init:"
formattedinit1 = fdtask_to_pddl.format_condition([i for i in fd_task.init if i.predicate!="="])
formattedinit2 = format_string_literals(formattedinit1.split(") ("),1).replace(")_)",")")
npositive =  len(formattedinit1.split(") (")) 

atoms = ""
if bneginit==True: # Completing initial state with negated literals
    for p in fd_task.predicates:
        candidate_objects = []
        for arg in p.arguments:
            candidate_pos=[]
            for o in sorted(set(fd_task.objects)):
                aux = [t for t in fd_task.types if t.name==o.type_name]
                supernames = [str(t.name) for t in aux] + [str(t) for t in aux[0].supertype_names]
                if arg.type_name in supernames:
                    candidate_pos = candidate_pos + [str(o.name)]
            candidate_objects.append(candidate_pos)

        combinations = list(itertools.product(*candidate_objects))
        for item in combinations:
            atom = "(" + p.name + "_" + "_".join(map(str,item)) + ")"
            if not atom in formattedinit2:
                npositive = npositive + 1
                atoms = atoms + " & " + str(npositive) + str(" not-(" + p.name + "_" + "_".join(map(str,item)) + ")")            
    
print formattedinit2 + atoms
print ""

print "goals:"
formattedgoal = fdtask_to_pddl.format_condition(fd_task.goal)
print format_string_literals(formattedgoal.replace("(and ","")[:-1].split(")("),1)


# Reading plan
steps = []
makespan=0
timestamps = set([])
plan_file = open(plan_filename, 'r')
for line in plan_file:
    if not ";" in line and ":" in line:
        # Creating a plan step
        start_time = int(line.split(".")[0])
        timestamps.add(start_time)
        
        duration = float(line.split("[")[1].replace("]",""))

        aname = line.split(": ")[1].split(" [")[0].replace(" (","(").replace(") ",")").replace(" ","_").replace("_(","(")
        aparams = line.split("(")[1].split(")")[0].split(" ")[1:]

        clean_aname=aname.lower().replace("(","").replace(")","").split("_")[0]        
        operator = [o for o in fd_task.actions if clean_aname==o.name.lower()][0]
        oparams = [str(p.name) for p in operator.parameters]
        
        steps.append(PlanStep(aname,operator, start_time, -1, [] , oparams, aparams))
        makespan = max(makespan, int(start_time + duration))
plan_file.close()

# Adding the last timestamp
timestamps.add(makespan)


# Makespan
print "makespan:"
print str(makespan + len(timestamps))
print


# Plan steps
steps.sort(key=lambda x: x.stime)
for s in steps:
    aux_timestamps = sorted(timestamps)
    s.block = aux_timestamps.index(s.stime) + 1    
    s.durations = [item - s.stime for item in aux_timestamps[aux_timestamps.index(s.stime)+1:]]
    print s
    print

if not btrunk:    
    print "end:\n"
sys.exit(0)




