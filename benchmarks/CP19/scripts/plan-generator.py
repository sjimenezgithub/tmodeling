#! /usr/bin/env python
import os, sys

DOMAINS = ["depotsSimpleTime-IPC02"]
NPROBLEMS = 2
DOMAINS_FOLDER = "../domains/"
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

for d in DOMAINS:
    source_dir = DOMAINS_FOLDER + d
    onlyfiles = sorted([f for f in os.listdir(source_dir) if os.path.isfile(os.path.join(source_dir, f))])
    print onlyfiles[1:1+NPROBLEMS]

sys.exit(0)




