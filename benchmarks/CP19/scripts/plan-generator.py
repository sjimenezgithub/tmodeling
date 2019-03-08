#! /usr/bin/env python
import os, sys

#PLANNERS = ["LPGS", "LPGQ", "TFD", "TFLAP", "TEAM1"]
PLANNERS = ["TFD"]
#DOMAINS = ["depotsSimpleTime-IPC02"]
DOMAINS = ["depotsSimpleTime-IPC02", "driverlogSimpleTime-IPC02", "roversSimpleTime-IPC02", "satelliteSimpleTime-IPC02", "zenoSimpleTime-IPC02", "storageSimpleTime-IPC06", "floortile", "parking", "pegsol", "sokoban"]
NPROBLEMS = 2
DOMAINS_FOLDER = "../domains/"
PLANS_FOLDER = "../plans/"
PLANNERS_FOLDER = "../../../planners/"



# **************************************#
# MAIN
# **************************************#
try:
    print 
except:
    print "Usage:"
    print sys.argv[0] + " "
    sys.exit(-1)

for p in PLANNERS:    
    for d in DOMAINS:
        source_dir = DOMAINS_FOLDER + d
        onlyfiles = sorted([f for f in os.listdir(source_dir) if os.path.isfile(os.path.join(source_dir, f))])
        for pfile in onlyfiles[1:1+NPROBLEMS]:
            if p=="LPGS":
                cmd = PLANNERS_FOLDER +"/LPG/lpg-td-1.0 -o " + DOMAINS_FOLDER + d + "/domain.pddl -f " + DOMAINS_FOLDER + d + "/"+ pfile  + " -speed -out " + PLANS_FOLDER + p + "_" + d +"_" + pfile
                print cmd
                os.system(cmd)
            if p=="LPGQ":
                cmd = PLANNERS_FOLDER +"/LPG/lpg-td-1.0 -o " + DOMAINS_FOLDER + d + "/domain.pddl -f " + DOMAINS_FOLDER + d + "/"+ pfile  + " -quality -out " + PLANS_FOLDER + p + "_" + d +"_" + pfile
                print cmd
                os.system(cmd)
            if p=="TFD":
                cmd = PLANNERS_FOLDER +"/LPG/lpg-td-1.0 -o " + DOMAINS_FOLDER + d + "/domain.pddl -f " + DOMAINS_FOLDER + d + "/"+ pfile  + " -quality -out " + PLANS_FOLDER + p + "_" + d +"_" + pfile
                print cmd
                os.system(cmd)
                sys.exit(0)
sys.exit(0)




