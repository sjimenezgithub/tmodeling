#! /usr/bin/env python
import os, sys
import pddl, pddl_parser
import fdtask_to_pddl

class PlanStep:
    def __init__(self, n, o, st, d):
        self.name = n
        self.operator = o
        self.stime = st
        self.duration = d

    def __str__(self):
        str_out = ""
        str_out = str_out + "action:\n"
        str_out = str_out + self.name + "\n"        
        str_out = str_out + "operator:\n"
        str_out = str_out + self.operator.name + "\n"        
        str_out = str_out + "start_time:\n"
        str_out = str_out + str(self.stime) + "\n"                
        str_out = str_out + "duration:\n"
        str_out = str_out + str(self.duration) + "\n"        
        str_out = str_out + "precs:\n"
        str_out = str_out + fdtask_to_pddl.format_condition(self.operator.precondition) + "\n"
        str_out = str_out + "effs:\n"
        for item in self.operator.effects:
            str_out = str_out + fdtask_to_pddl.format_effect(item)
        return str_out
        

# **************************************#
# MAIN
# **************************************#
try:
    domain_filename  = sys.argv[1]
    problem_filename = sys.argv[2]
    plan_file_name = sys.argv[3]

except:
    print "Usage:"
    print sys.argv[0] + " <domain file name> <problem file name> <plan file name>"
    sys.exit(-1)


# Creating a FD task with the domain and the problem files
fd_domain = pddl_parser.pddl_file.parse_pddl_file("domain", domain_filename)
fd_problem = pddl_parser.pddl_file.parse_pddl_file("task", problem_filename)
fd_task = pddl_parser.pddl_file.parsing_functions.parse_task(fd_domain, fd_problem)


# Creating a plan step
s = PlanStep("hola",fd_task.actions[0],0,1)
print s
    

sys.exit(0)
