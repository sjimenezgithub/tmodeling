#! /usr/bin/env python
import os, sys

PLANS_FOLDER = "../plans/"
DOMAINS_FOLDER = "/home/slimbook/research/tmodeling/benchmarks/ECAI20/domains/"
COMPILED_PLANS_FOLDER = "../compiled-plans/"
TRUNKED_COMPILED_PLANS_FOLDER = "../trunked-plans/"
DOMAIN_PDDL_FILE = "domain-empty-constraints.pddl"


# **************************************#
# MAIN
# **************************************#
try:
    print 
except:
    print "Usage:"
    print sys.argv[0] + " "
    sys.exit(-1)

plan_files = sorted([f for f in os.listdir(PLANS_FOLDER) if os.path.isfile(os.path.join(PLANS_FOLDER, f))])
for p in plan_files:
    domain = p.split("_")[0]
    plannner = p.split("_")[1]
    problem = p.split("_")[2].split(".")[:-1]
    problem = ".".join(map(str,problem))

    cwd = os.getcwd() + "/"
    output_name = cwd + COMPILED_PLANS_FOLDER + "compiled." + p
    cmd = "cd ../../../src/; ./compiler.py -n -d " + DOMAINS_FOLDER + domain + "/" + DOMAIN_PDDL_FILE + " " + DOMAINS_FOLDER + "/" + domain + "/" + problem + " " + cwd + PLANS_FOLDER + p + " "+output_name
    print cmd
    os.system(cmd)

    cmd = "cd "+ cwd
    os.system(cmd)

    cwd = os.getcwd() + "/"
    output_name = cwd + TRUNKED_COMPILED_PLANS_FOLDER + "compiled." + p
    cmd = "cd ../../../src/; ./compiler.py -n -e -d " + DOMAINS_FOLDER + domain + "/" + DOMAIN_PDDL_FILE + " " + DOMAINS_FOLDER + "/" + domain + "/" + problem + " " + cwd + PLANS_FOLDER + p + " "+output_name
    print cmd
    os.system(cmd)

    cmd = "cd "+ cwd
    os.system(cmd)    
    
sys.exit(0)




