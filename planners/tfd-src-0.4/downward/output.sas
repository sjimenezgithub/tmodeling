begin_variables
50
var0 2 -1
var1 2 -1
var2 2 -1
var3 2 -1
var4 2 -1
var5 2 -1
var6 2 -1
var7 2 -1
var8 2 -1
var9 2 -1
var10 2 -1
var11 2 -1
var12 2 -1
var13 2 -1
var14 2 -1
var15 2 -1
var16 2 -1
var17 2 -1
var18 2 -1
var19 2 -1
var20 2 -1
var21 2 -1
var22 2 -1
var23 2 -1
var24 2 -1
var25 2 -1
var26 2 -1
var27 2 -1
var28 2 -1
var29 2 -1
var30 2 -1
var31 2 -1
var32 2 -1
var33 2 -1
var34 2 -1
var35 2 -1
var36 2 -1
var37 2 -1
var38 2 -1
var39 2 -1
var40 2 -1
var41 2 -1
var42 2 -1
var43 2 -1
var44 2 -1
var45 2 -1
var46 -1 -1
var47 -1 -1
var48 -1 -1
var49 -1 -1
end_variables
begin_state
1
0
1
0
1
1
0
0
0
0
0
0
1
1
0
0
1
1
0
0
0
0
0
1
1
0
1
1
1
1
1
1
1
1
1
1
1
1
1
0
1
1
1
0
1
1
10.0
1.0
3.0
4.0
end_state
begin_goal
2
40 0
44 0
end_goal
90
begin_operator
drive truck0 depot0 depot0
= 46
0
0
0
1
0 0 0 12 0 1
1
0 0 0 12 -1 0
end_operator
begin_operator
drive truck0 depot0 distributor0
= 46
0
0
0
1
0 0 0 12 0 1
1
0 0 0 13 -1 0
end_operator
begin_operator
drive truck0 depot0 distributor1
= 46
0
0
0
1
0 0 0 12 0 1
1
0 0 0 14 -1 0
end_operator
begin_operator
drive truck0 distributor0 depot0
= 46
0
0
0
1
0 0 0 13 0 1
1
0 0 0 12 -1 0
end_operator
begin_operator
drive truck0 distributor0 distributor0
= 46
0
0
0
1
0 0 0 13 0 1
1
0 0 0 13 -1 0
end_operator
begin_operator
drive truck0 distributor0 distributor1
= 46
0
0
0
1
0 0 0 13 0 1
1
0 0 0 14 -1 0
end_operator
begin_operator
drive truck0 distributor1 depot0
= 46
0
0
0
1
0 0 0 14 0 1
1
0 0 0 12 -1 0
end_operator
begin_operator
drive truck0 distributor1 distributor0
= 46
0
0
0
1
0 0 0 14 0 1
1
0 0 0 13 -1 0
end_operator
begin_operator
drive truck0 distributor1 distributor1
= 46
0
0
0
1
0 0 0 14 0 1
1
0 0 0 14 -1 0
end_operator
begin_operator
drive truck1 depot0 depot0
= 46
0
0
0
1
0 0 0 15 0 1
1
0 0 0 15 -1 0
end_operator
begin_operator
drive truck1 depot0 distributor0
= 46
0
0
0
1
0 0 0 15 0 1
1
0 0 0 16 -1 0
end_operator
begin_operator
drive truck1 depot0 distributor1
= 46
0
0
0
1
0 0 0 15 0 1
1
0 0 0 17 -1 0
end_operator
begin_operator
drive truck1 distributor0 depot0
= 46
0
0
0
1
0 0 0 16 0 1
1
0 0 0 15 -1 0
end_operator
begin_operator
drive truck1 distributor0 distributor0
= 46
0
0
0
1
0 0 0 16 0 1
1
0 0 0 16 -1 0
end_operator
begin_operator
drive truck1 distributor0 distributor1
= 46
0
0
0
1
0 0 0 16 0 1
1
0 0 0 17 -1 0
end_operator
begin_operator
drive truck1 distributor1 depot0
= 46
0
0
0
1
0 0 0 17 0 1
1
0 0 0 15 -1 0
end_operator
begin_operator
drive truck1 distributor1 distributor0
= 46
0
0
0
1
0 0 0 17 0 1
1
0 0 0 16 -1 0
end_operator
begin_operator
drive truck1 distributor1 distributor1
= 46
0
0
0
1
0 0 0 17 0 1
1
0 0 0 17 -1 0
end_operator
begin_operator
drop hoist0 crate0 crate0 depot0
= 47
0
4
0 0
6 0
21 0
30 0
0
0
5
0 0 0 0 -1 0
0 0 0 18 -1 0
0 0 0 36 -1 0
0 0 0 21 -1 0
0 0 1 30 0 30 -1 1
end_operator
begin_operator
drop hoist0 crate0 crate1 depot0
= 47
0
4
6 0
3 0
22 0
30 0
0
0
6
0 0 0 0 -1 0
0 0 0 37 -1 0
0 0 0 18 -1 0
0 0 0 21 -1 0
0 0 1 22 0 22 -1 1
0 0 1 30 0 30 -1 1
end_operator
begin_operator
drop hoist0 crate0 pallet0 depot0
= 47
0
4
9 0
6 0
30 0
23 0
0
0
6
0 0 0 0 -1 0
0 0 0 38 -1 0
0 0 0 18 -1 0
0 0 0 21 -1 0
0 0 1 23 0 23 -1 1
0 0 1 30 0 30 -1 1
end_operator
begin_operator
drop hoist0 crate1 crate0 depot0
= 47
0
4
0 0
21 0
6 0
31 0
0
0
6
0 0 0 3 -1 0
0 0 0 41 -1 0
0 0 0 18 -1 0
0 0 1 21 0 21 -1 1
0 0 0 22 -1 0
0 0 1 31 0 31 -1 1
end_operator
begin_operator
drop hoist0 crate1 crate1 depot0
= 47
0
4
3 0
6 0
22 0
31 0
0
0
5
0 0 0 18 -1 0
0 0 0 3 -1 0
0 0 0 42 -1 0
0 0 0 22 -1 0
0 0 1 31 0 31 -1 1
end_operator
begin_operator
drop hoist0 crate1 pallet0 depot0
= 47
0
4
9 0
23 0
6 0
31 0
0
0
6
0 0 0 3 -1 0
0 0 0 43 -1 0
0 0 0 18 -1 0
0 0 0 22 -1 0
0 0 1 23 0 23 -1 1
0 0 1 31 0 31 -1 1
end_operator
begin_operator
drop hoist1 crate0 crate0 distributor0
= 47
0
4
32 0
1 0
21 0
7 0
0
0
5
0 0 1 32 0 32 -1 1
0 0 0 1 -1 0
0 0 0 19 -1 0
0 0 0 36 -1 0
0 0 0 21 -1 0
end_operator
begin_operator
drop hoist1 crate0 crate1 distributor0
= 47
0
4
32 0
4 0
22 0
7 0
0
0
6
0 0 1 32 0 32 -1 1
0 0 0 1 -1 0
0 0 0 37 -1 0
0 0 0 19 -1 0
0 0 0 21 -1 0
0 0 1 22 0 22 -1 1
end_operator
begin_operator
drop hoist1 crate0 pallet1 distributor0
= 47
0
4
24 0
32 0
10 0
7 0
0
0
6
0 0 1 32 0 32 -1 1
0 0 0 1 -1 0
0 0 0 39 -1 0
0 0 0 19 -1 0
0 0 0 21 -1 0
0 0 1 24 0 24 -1 1
end_operator
begin_operator
drop hoist1 crate1 crate0 distributor0
= 47
0
4
1 0
7 0
21 0
33 0
0
0
6
0 0 1 33 0 33 -1 1
0 0 0 4 -1 0
0 0 0 41 -1 0
0 0 0 19 -1 0
0 0 1 21 0 21 -1 1
0 0 0 22 -1 0
end_operator
begin_operator
drop hoist1 crate1 crate1 distributor0
= 47
0
4
33 0
4 0
22 0
7 0
0
0
5
0 0 1 33 0 33 -1 1
0 0 0 42 -1 0
0 0 0 19 -1 0
0 0 0 4 -1 0
0 0 0 22 -1 0
end_operator
begin_operator
drop hoist1 crate1 pallet1 distributor0
= 47
0
4
24 0
33 0
10 0
7 0
0
0
6
0 0 1 33 0 33 -1 1
0 0 0 4 -1 0
0 0 0 44 -1 0
0 0 0 19 -1 0
0 0 0 22 -1 0
0 0 1 24 0 24 -1 1
end_operator
begin_operator
drop hoist2 crate0 crate0 distributor1
= 47
0
4
8 0
2 0
34 0
21 0
0
0
5
0 0 0 36 -1 0
0 0 0 2 -1 0
0 0 1 34 0 34 -1 1
0 0 0 20 -1 0
0 0 0 21 -1 0
end_operator
begin_operator
drop hoist2 crate0 crate1 distributor1
= 47
0
4
8 0
34 0
5 0
22 0
0
0
6
0 0 0 2 -1 0
0 0 0 37 -1 0
0 0 1 34 0 34 -1 1
0 0 0 20 -1 0
0 0 0 21 -1 0
0 0 1 22 0 22 -1 1
end_operator
begin_operator
drop hoist2 crate0 pallet2 distributor1
= 47
0
4
8 0
25 0
34 0
11 0
0
0
6
0 0 0 2 -1 0
0 0 0 40 -1 0
0 0 1 34 0 34 -1 1
0 0 0 20 -1 0
0 0 0 21 -1 0
0 0 1 25 0 25 -1 1
end_operator
begin_operator
drop hoist2 crate1 crate0 distributor1
= 47
0
4
8 0
2 0
35 0
21 0
0
0
6
0 0 1 35 0 35 -1 1
0 0 0 5 -1 0
0 0 0 41 -1 0
0 0 0 20 -1 0
0 0 1 21 0 21 -1 1
0 0 0 22 -1 0
end_operator
begin_operator
drop hoist2 crate1 crate1 distributor1
= 47
0
4
8 0
35 0
5 0
22 0
0
0
5
0 0 0 42 -1 0
0 0 1 35 0 35 -1 1
0 0 0 20 -1 0
0 0 0 5 -1 0
0 0 0 22 -1 0
end_operator
begin_operator
drop hoist2 crate1 pallet2 distributor1
= 47
0
4
8 0
25 0
11 0
35 0
0
0
6
0 0 1 35 0 35 -1 1
0 0 0 5 -1 0
0 0 0 45 -1 0
0 0 0 20 -1 0
0 0 0 22 -1 0
0 0 1 25 0 25 -1 1
end_operator
begin_operator
lift hoist0 crate0 crate0 depot0
= 47
0
1
6 0
0
5
0 0 0 0 0 1
0 0 0 18 0 1
0 0 0 36 0 1
0 0 0 21 0 0
0 0 0 30 -1 0
0
end_operator
begin_operator
lift hoist0 crate0 crate1 depot0
= 47
0
1
6 0
0
6
0 0 0 0 0 1
0 0 0 37 0 1
0 0 0 18 0 1
0 0 0 21 0 1
0 0 0 22 -1 0
0 0 0 30 -1 0
0
end_operator
begin_operator
lift hoist0 crate0 pallet0 depot0
= 47
0
1
6 0
0
6
0 0 0 0 0 1
0 0 0 38 0 1
0 0 0 18 0 1
0 0 0 21 0 1
0 0 0 23 -1 0
0 0 0 30 -1 0
0
end_operator
begin_operator
lift hoist0 crate0 pallet1 depot0
= 47
0
1
6 0
0
6
0 0 0 0 0 1
0 0 0 39 0 1
0 0 0 18 0 1
0 0 0 21 0 1
0 0 0 24 -1 0
0 0 0 30 -1 0
0
end_operator
begin_operator
lift hoist0 crate0 pallet2 depot0
= 47
0
1
6 0
0
6
0 0 0 0 0 1
0 0 0 40 0 1
0 0 0 18 0 1
0 0 0 21 0 1
0 0 0 25 -1 0
0 0 0 30 -1 0
0
end_operator
begin_operator
lift hoist0 crate1 crate0 depot0
= 47
0
1
6 0
0
6
0 0 0 3 0 1
0 0 0 41 0 1
0 0 0 18 0 1
0 0 0 21 -1 0
0 0 0 22 0 1
0 0 0 31 -1 0
0
end_operator
begin_operator
lift hoist0 crate1 crate1 depot0
= 47
0
1
6 0
0
5
0 0 0 18 0 1
0 0 0 3 0 1
0 0 0 42 0 1
0 0 0 22 0 0
0 0 0 31 -1 0
0
end_operator
begin_operator
lift hoist0 crate1 pallet0 depot0
= 47
0
1
6 0
0
6
0 0 0 3 0 1
0 0 0 43 0 1
0 0 0 18 0 1
0 0 0 22 0 1
0 0 0 23 -1 0
0 0 0 31 -1 0
0
end_operator
begin_operator
lift hoist0 crate1 pallet1 depot0
= 47
0
1
6 0
0
6
0 0 0 3 0 1
0 0 0 44 0 1
0 0 0 18 0 1
0 0 0 22 0 1
0 0 0 24 -1 0
0 0 0 31 -1 0
0
end_operator
begin_operator
lift hoist0 crate1 pallet2 depot0
= 47
0
1
6 0
0
6
0 0 0 3 0 1
0 0 0 45 0 1
0 0 0 18 0 1
0 0 0 22 0 1
0 0 0 25 -1 0
0 0 0 31 -1 0
0
end_operator
begin_operator
lift hoist1 crate0 crate0 distributor0
= 47
0
1
7 0
0
5
0 0 0 32 -1 0
0 0 0 1 0 1
0 0 0 19 0 1
0 0 0 36 0 1
0 0 0 21 0 0
0
end_operator
begin_operator
lift hoist1 crate0 crate1 distributor0
= 47
0
1
7 0
0
6
0 0 0 32 -1 0
0 0 0 1 0 1
0 0 0 37 0 1
0 0 0 19 0 1
0 0 0 21 0 1
0 0 0 22 -1 0
0
end_operator
begin_operator
lift hoist1 crate0 pallet0 distributor0
= 47
0
1
7 0
0
6
0 0 0 32 -1 0
0 0 0 1 0 1
0 0 0 38 0 1
0 0 0 19 0 1
0 0 0 21 0 1
0 0 0 23 -1 0
0
end_operator
begin_operator
lift hoist1 crate0 pallet1 distributor0
= 47
0
1
7 0
0
6
0 0 0 32 -1 0
0 0 0 1 0 1
0 0 0 39 0 1
0 0 0 19 0 1
0 0 0 21 0 1
0 0 0 24 -1 0
0
end_operator
begin_operator
lift hoist1 crate0 pallet2 distributor0
= 47
0
1
7 0
0
6
0 0 0 32 -1 0
0 0 0 1 0 1
0 0 0 40 0 1
0 0 0 19 0 1
0 0 0 21 0 1
0 0 0 25 -1 0
0
end_operator
begin_operator
lift hoist1 crate1 crate0 distributor0
= 47
0
1
7 0
0
6
0 0 0 33 -1 0
0 0 0 4 0 1
0 0 0 41 0 1
0 0 0 19 0 1
0 0 0 21 -1 0
0 0 0 22 0 1
0
end_operator
begin_operator
lift hoist1 crate1 crate1 distributor0
= 47
0
1
7 0
0
5
0 0 0 33 -1 0
0 0 0 42 0 1
0 0 0 19 0 1
0 0 0 4 0 1
0 0 0 22 0 0
0
end_operator
begin_operator
lift hoist1 crate1 pallet0 distributor0
= 47
0
1
7 0
0
6
0 0 0 33 -1 0
0 0 0 4 0 1
0 0 0 43 0 1
0 0 0 19 0 1
0 0 0 22 0 1
0 0 0 23 -1 0
0
end_operator
begin_operator
lift hoist1 crate1 pallet1 distributor0
= 47
0
1
7 0
0
6
0 0 0 33 -1 0
0 0 0 4 0 1
0 0 0 44 0 1
0 0 0 19 0 1
0 0 0 22 0 1
0 0 0 24 -1 0
0
end_operator
begin_operator
lift hoist1 crate1 pallet2 distributor0
= 47
0
1
7 0
0
6
0 0 0 33 -1 0
0 0 0 4 0 1
0 0 0 45 0 1
0 0 0 19 0 1
0 0 0 22 0 1
0 0 0 25 -1 0
0
end_operator
begin_operator
lift hoist2 crate0 crate0 distributor1
= 47
0
1
8 0
0
5
0 0 0 36 0 1
0 0 0 34 -1 0
0 0 0 2 0 1
0 0 0 20 0 1
0 0 0 21 0 0
0
end_operator
begin_operator
lift hoist2 crate0 crate1 distributor1
= 47
0
1
8 0
0
6
0 0 0 34 -1 0
0 0 0 37 0 1
0 0 0 2 0 1
0 0 0 20 0 1
0 0 0 21 0 1
0 0 0 22 -1 0
0
end_operator
begin_operator
lift hoist2 crate0 pallet0 distributor1
= 47
0
1
8 0
0
6
0 0 0 34 -1 0
0 0 0 38 0 1
0 0 0 2 0 1
0 0 0 20 0 1
0 0 0 21 0 1
0 0 0 23 -1 0
0
end_operator
begin_operator
lift hoist2 crate0 pallet1 distributor1
= 47
0
1
8 0
0
6
0 0 0 34 -1 0
0 0 0 39 0 1
0 0 0 2 0 1
0 0 0 20 0 1
0 0 0 21 0 1
0 0 0 24 -1 0
0
end_operator
begin_operator
lift hoist2 crate0 pallet2 distributor1
= 47
0
1
8 0
0
6
0 0 0 34 -1 0
0 0 0 40 0 1
0 0 0 2 0 1
0 0 0 20 0 1
0 0 0 21 0 1
0 0 0 25 -1 0
0
end_operator
begin_operator
lift hoist2 crate1 crate0 distributor1
= 47
0
1
8 0
0
6
0 0 0 35 -1 0
0 0 0 5 0 1
0 0 0 41 0 1
0 0 0 20 0 1
0 0 0 21 -1 0
0 0 0 22 0 1
0
end_operator
begin_operator
lift hoist2 crate1 crate1 distributor1
= 47
0
1
8 0
0
5
0 0 0 42 0 1
0 0 0 35 -1 0
0 0 0 20 0 1
0 0 0 5 0 1
0 0 0 22 0 0
0
end_operator
begin_operator
lift hoist2 crate1 pallet0 distributor1
= 47
0
1
8 0
0
6
0 0 0 35 -1 0
0 0 0 5 0 1
0 0 0 43 0 1
0 0 0 20 0 1
0 0 0 22 0 1
0 0 0 23 -1 0
0
end_operator
begin_operator
lift hoist2 crate1 pallet1 distributor1
= 47
0
1
8 0
0
6
0 0 0 35 -1 0
0 0 0 5 0 1
0 0 0 44 0 1
0 0 0 20 0 1
0 0 0 22 0 1
0 0 0 24 -1 0
0
end_operator
begin_operator
lift hoist2 crate1 pallet2 distributor1
= 47
0
1
8 0
0
6
0 0 0 35 -1 0
0 0 0 5 0 1
0 0 0 45 0 1
0 0 0 20 0 1
0 0 0 22 0 1
0 0 0 25 -1 0
0
end_operator
begin_operator
load hoist0 crate0 truck0 depot0
= 48
0
3
12 0
6 0
30 0
0
0
3
0 0 0 26 -1 0
0 0 0 18 -1 0
0 0 1 30 0 30 -1 1
end_operator
begin_operator
load hoist0 crate0 truck1 depot0
= 48
0
3
6 0
30 0
15 0
0
0
3
0 0 0 18 -1 0
0 0 0 27 -1 0
0 0 1 30 0 30 -1 1
end_operator
begin_operator
load hoist0 crate1 truck0 depot0
= 48
0
3
12 0
6 0
31 0
0
0
3
0 0 0 18 -1 0
0 0 0 28 -1 0
0 0 1 31 0 31 -1 1
end_operator
begin_operator
load hoist0 crate1 truck1 depot0
= 48
0
3
15 0
6 0
31 0
0
0
3
0 0 0 18 -1 0
0 0 0 29 -1 0
0 0 1 31 0 31 -1 1
end_operator
begin_operator
load hoist1 crate0 truck0 distributor0
= 48
0
3
32 0
13 0
7 0
0
0
3
0 0 1 32 0 32 -1 1
0 0 0 26 -1 0
0 0 0 19 -1 0
end_operator
begin_operator
load hoist1 crate0 truck1 distributor0
= 48
0
3
16 0
32 0
7 0
0
0
3
0 0 0 19 -1 0
0 0 1 32 0 32 -1 1
0 0 0 27 -1 0
end_operator
begin_operator
load hoist1 crate1 truck0 distributor0
= 48
0
3
33 0
13 0
7 0
0
0
3
0 0 1 33 0 33 -1 1
0 0 0 19 -1 0
0 0 0 28 -1 0
end_operator
begin_operator
load hoist1 crate1 truck1 distributor0
= 48
0
3
16 0
33 0
7 0
0
0
3
0 0 1 33 0 33 -1 1
0 0 0 19 -1 0
0 0 0 29 -1 0
end_operator
begin_operator
load hoist2 crate0 truck0 distributor1
= 48
0
3
8 0
34 0
14 0
0
0
3
0 0 0 26 -1 0
0 0 0 20 -1 0
0 0 1 34 0 34 -1 1
end_operator
begin_operator
load hoist2 crate0 truck1 distributor1
= 48
0
3
8 0
17 0
34 0
0
0
3
0 0 1 34 0 34 -1 1
0 0 0 27 -1 0
0 0 0 20 -1 0
end_operator
begin_operator
load hoist2 crate1 truck0 distributor1
= 48
0
3
8 0
35 0
14 0
0
0
3
0 0 0 20 -1 0
0 0 1 35 0 35 -1 1
0 0 0 28 -1 0
end_operator
begin_operator
load hoist2 crate1 truck1 distributor1
= 48
0
3
8 0
17 0
35 0
0
0
3
0 0 1 35 0 35 -1 1
0 0 0 20 -1 0
0 0 0 29 -1 0
end_operator
begin_operator
unload hoist0 crate0 truck0 depot0
= 49
0
2
12 0
6 0
0
3
0 0 0 26 0 1
0 0 0 18 0 1
0 0 0 30 -1 0
0
end_operator
begin_operator
unload hoist0 crate0 truck1 depot0
= 49
0
2
6 0
15 0
0
3
0 0 0 18 0 1
0 0 0 27 0 1
0 0 0 30 -1 0
0
end_operator
begin_operator
unload hoist0 crate1 truck0 depot0
= 49
0
2
12 0
6 0
0
3
0 0 0 18 0 1
0 0 0 28 0 1
0 0 0 31 -1 0
0
end_operator
begin_operator
unload hoist0 crate1 truck1 depot0
= 49
0
2
6 0
15 0
0
3
0 0 0 18 0 1
0 0 0 29 0 1
0 0 0 31 -1 0
0
end_operator
begin_operator
unload hoist1 crate0 truck0 distributor0
= 49
0
2
13 0
7 0
0
3
0 0 0 32 -1 0
0 0 0 26 0 1
0 0 0 19 0 1
0
end_operator
begin_operator
unload hoist1 crate0 truck1 distributor0
= 49
0
2
16 0
7 0
0
3
0 0 0 32 -1 0
0 0 0 19 0 1
0 0 0 27 0 1
0
end_operator
begin_operator
unload hoist1 crate1 truck0 distributor0
= 49
0
2
13 0
7 0
0
3
0 0 0 33 -1 0
0 0 0 19 0 1
0 0 0 28 0 1
0
end_operator
begin_operator
unload hoist1 crate1 truck1 distributor0
= 49
0
2
16 0
7 0
0
3
0 0 0 33 -1 0
0 0 0 19 0 1
0 0 0 29 0 1
0
end_operator
begin_operator
unload hoist2 crate0 truck0 distributor1
= 49
0
2
8 0
14 0
0
3
0 0 0 34 -1 0
0 0 0 20 0 1
0 0 0 26 0 1
0
end_operator
begin_operator
unload hoist2 crate0 truck1 distributor1
= 49
0
2
8 0
17 0
0
3
0 0 0 34 -1 0
0 0 0 27 0 1
0 0 0 20 0 1
0
end_operator
begin_operator
unload hoist2 crate1 truck0 distributor1
= 49
0
2
8 0
14 0
0
3
0 0 0 20 0 1
0 0 0 35 -1 0
0 0 0 28 0 1
0
end_operator
begin_operator
unload hoist2 crate1 truck1 distributor1
= 49
0
2
8 0
17 0
0
3
0 0 0 35 -1 0
0 0 0 20 0 1
0 0 0 29 0 1
0
end_operator
0
0
0
0
