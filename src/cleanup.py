#! /usr/bin/env python
import sys,os

cmd=  "rm -rf *.pyc pddl/*.pyc  pddl_parser/*.pyc *.*~"
print cmd
os.system(cmd)

sys.exit(0)

