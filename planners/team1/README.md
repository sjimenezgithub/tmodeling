# IPC-2018-Tempo

## Repository versions
The `universal-pddl-parser` and the `temporal-planning` folders are git-free clones of GitHub repositories. The URL and the commit they are linked to are the following:

* `universal-pddl-parser` - [Link](https://github.com/aig-upf/universal-pddl-parser) - Commit: 9dbbaa5c93b2173e073b90dcced114dfefd5e505
* `temporal-planning` - [Link](https://github.com/aig-upf/temporal-planning) - Commit: 1487ed2

## How to install Singularity?
You can install Singularity locally with the following commands:
```
sudo apt install automake
git clone https://github.com/singularityware/singularity.git
cd singularity
git checkout 2.4
./autogen.sh
./configure --prefix=/usr/local
make
sudo make install
```

## How to test the containers?
To test your Singularity script, please install Singularity (see above) and run the following commands (replacing our demo submission with your repository):
```
hg clone https://bitbucket.org/ipc2018/demo-submission -r ipc-2018-seq-opt
sudo singularity build planner.img demo-submission/Singularity
mkdir rundir
cp path/to/domain.pddl rundir
cp path/to/problem.pddl rundir
RUNDIR="$(pwd)/rundir"
DOMAIN="$RUNDIR/domain.pddl"
PROBLEM="$RUNDIR/problem.pddl"
PLANFILE="$RUNDIR/sas_plan"
singularity run -C -H $RUNDIR planner.img $DOMAIN $PROBLEM $PLANFILE
```

The last command also shows how we will call the container during the competition: the parameter "-H" mounts the directory containing the PDDL files into the file system of the container and uses it as the user's home directory. The parameter "-C" then isolates the container from the rest of the system. Only files written to the mounted directory will be stored permanently. Other created files (for example in /tmp) only persist for the current session and are cleaned up afterwards. When running the container on two instances at the same time, their run directories and sessions will be different, so the two runs cannot interact. The container itself is read-only after its creation.

