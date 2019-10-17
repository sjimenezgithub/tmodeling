#! /usr/bin/env python
import os, sys

TIME_LIMIT_SECS = 250
PLANNERS = ["LPGS", "LPGQ", "TFD", "TFLAP", "TEAM1"]
DOMAINS = ["zenoSimpleTime-IPC02", "depotsSimpleTime-IPC02", "driverlogSimpleTime-IPC02", "roversSimpleTime-IPC02", "satelliteSimpleTime-IPC02", "storageSimpleTime-IPC06", "floortile", "parking", "sokoban"]
NPROBLEMS = -1
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

for d in DOMAINS:    
    for p in PLANNERS:    
        source_dir = DOMAINS_FOLDER + d
        onlyfiles = sorted([f for f in os.listdir(source_dir) if os.path.isfile(os.path.join(source_dir, f))])

        if NPROBLEMS==-1:
            NPROBLEMS = len(onlyfiles) - 3        
        for pfile in onlyfiles[3:3+NPROBLEMS]: # Starts in three to skip: 1) temp domain, 2) classical domain and 3) invariants 
            output_name = PLANS_FOLDER + d + "_" + p +"_" + pfile
            if p=="LPGS":
                cmd = "ulimit -t " + str(TIME_LIMIT_SECS) + "; "
                cmd = cmd + PLANNERS_FOLDER +"/LPG/lpg-td-1.0 -o " + DOMAINS_FOLDER + d + "/domain.pddl -f " + DOMAINS_FOLDER + d + "/"+ pfile  + " -cputime "  + str(TIME_LIMIT_SECS-5) + " -speed -out " + output_name
                print cmd
                os.system(cmd)
                
            if p=="LPGQ":
                cmd = "ulimit -t " + str(TIME_LIMIT_SECS) + "; "
                cmd = cmd + PLANNERS_FOLDER +"/LPG/lpg-td-1.0 -o " + DOMAINS_FOLDER + d + "/domain.pddl -f " + DOMAINS_FOLDER + d + "/"+ pfile  + " -cputime "  + str(TIME_LIMIT_SECS-5) + " -quality -out " + output_name
                print cmd
                os.system(cmd)
                
            if p=="TFLAP":
                cmd = "ulimit -t " + str(TIME_LIMIT_SECS) + "; "
                cmd = cmd + PLANNERS_FOLDER +"/tflap/tflap " + DOMAINS_FOLDER + d + "/domain.pddl " + DOMAINS_FOLDER + d + "/alternativeSet/"+ pfile  + " " + output_name
                print cmd
                os.system(cmd)
                
            if p=="TFD":
                cwd = os.getcwd()+"/"
                cmd = "cd " + PLANNERS_FOLDER +"/tfd-src-0.4/downward/ ;"
                cmd = cmd + "ulimit -t " + str(TIME_LIMIT_SECS) + " ; "
                cmd = cmd + "./plan " + cwd+DOMAINS_FOLDER + d + "/domain.pddl " + cwd+DOMAINS_FOLDER + d + "/"+ pfile  + " " + cwd + output_name
                print cmd
                os.system(cmd)
                cmd = "cd "+ cwd
                os.system(cmd)
                
            if p=="TEAM1":
                output_name = output_name +".SOL"
                cwd = os.getcwd()+"/"
                cmd = "cd " + PLANNERS_FOLDER +"/team1/src/temporal-planning/bin/ ;"
                cmd = cmd + "ulimit -t " + str(TIME_LIMIT_SECS) + " ; "
                cmd = cmd + "./plan_portfolio.py " + " --plan-file " + cwd + output_name + " " + cwd+DOMAINS_FOLDER + d + "/domain.pddl " + cwd+DOMAINS_FOLDER + d + "/alternativeSet/"+ pfile 
                print cmd
                os.system(cmd)
                cmd = "cd "+ cwd
                os.system(cmd)

            # removing all solutions except the last one
            solutions = sorted([f for f in os.listdir(PLANS_FOLDER) if (d + "_" + p +"_" + pfile in f) and (os.path.isfile(os.path.join(PLANS_FOLDER, f)))])
            for sol in solutions[:-1]:
                cmd = "rm " + PLANS_FOLDER+sol
                print cmd
                os.system(cmd)                    
                
sys.exit(0)




