#! /usr/bin/env python
import os, sys

#DOMAINS = ["depotsSimpleTime-IPC02"]
DOMAINS = ["depotsSimpleTime-IPC02", "driverlogSimpleTime-IPC02", "roversSimpleTime-IPC02", "satelliteSimpleTime-IPC02", "zenoSimpleTime-IPC02", "storageSimpleTime-IPC06", "floortile", "parking", "pegsol", "sokoban"]
NPROBLEMS = 2
DOMAINS_FOLDER = "../domains/"
PLANS_FOLDER = "../domains/"
PLANNERS = ["LPG_S", "LPG_Q", "TFD", "TFLAP", "TEAM1"]


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
            print p + " " + DOMAINS_FOLDER + d + " " + DOMAINS_FOLDER + pfile  + " " + PLANS_FOLDER + p + "_" + d +"_" + pfile
    

sys.exit(0)




