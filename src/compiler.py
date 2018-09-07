#! /usr/bin/env python
import os, sys
import pddl, pddl_parser


# **************************************#
# MAIN
# **************************************#
try:
    domain_file_name  = sys.argv[1]
    problem_file_name = sys.argv[2]
    plan_file_name = sys.argv[3]

except:
    print "Usage:"
    print sys.argv[0] + "<domain file name> <problem file name> <plan file name>"
    sys.exit(-1)


# Read the domain file

sys.exit(0)
