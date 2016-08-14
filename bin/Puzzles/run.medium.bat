@echo off
set classpath=.;
echo ====================================================================
echo Running medium puzzles
echo --- c15 (63 moves)
call runsuccess c15 15.23-27.30.41.goal medium
echo --- c16 (40 moves)
call runsuccess c16 16.19.20.goal medium
echo --- c18 (33 moves)
call runsuccess c18 18.21.goal medium
echo --- c19 (59 moves)
call runsuccess c19 16.19.20.goal medium
echo --- c20 (45 moves)
call runsuccess c20.21 16.19.20.goal medium
echo --- c21 (26 moves)
call runsuccess c20.21 18.21.goal medium
echo --- c23 (28 moves)
call runsuccess c23 15.23-27.30.41.goal medium
echo --- c24 (32 moves)
call runsuccess c24 15.23-27.30.41.goal medium
echo --- c27a (60 moves)
call runsuccess c27a 15.23-27.30.41.goal medium
echo --- c27b (70 moves)
call runsuccess c27b 15.23-27.30.41.goal medium
echo --- c27c (78 moves)
call runsuccess c27c 15.23-27.30.41.goal medium
echo --- c27d (81 moves)
call runsuccess c27d 15.23-27.30.41.goal medium
echo --- c28 (61 moves)
call runsuccess c28 28.goal medium
echo --- c29 (54 moves)
call runsuccess c29 29.goal medium
echo --- c30 (67 moves)
call runsuccess c15 15.23-27.30.41.goal medium
echo --- c31 (55 moves)
call runsuccess c31 31.goal medium
echo --- c32 (25 moves)
call runsuccess c32 32.goal medium
echo --- c33 (20 moves)
call runsuccess c33 33.goal medium
echo --- c34 (39 moves)
call runsuccess c34 34.goal medium
echo --- c35 (101 moves)
call runsuccess c35 35.goal medium
echo --- c36 (28 moves)
call runsuccess c36 36.goal medium
echo --- c37 (40 moves)
call runsuccess c37 37.goal medium
echo --- c38 (21 moves)
call runsuccess c38 38.goal medium
echo --- c39 (53 moves)
call runsuccess c39 39.goal medium
echo --- c40 (21 moves)
call runsuccess c40 40.goal medium
echo --- c41 (98 moves)
call runsuccess c15 15.23-27.30.41.goal medium
echo --- c43 (55 moves)
call runsuccess c43-45 43.goal medium
echo --- c44 (70 moves)
call runsuccess c43-45 44.goal medium
echo --- c50 (41 moves, 4x6)
call runsuccess c50-51 50.52.goal medium
echo --- c51 (71 moves, 4x6)
call runsuccess c50-51 51.goal medium
echo --- c52 (90 moves, 4x6)
call runsuccess c52 50.52.goal medium
echo --- c56 (55 moves, 6x5)
call runsuccess c56 55.56.goal medium

echo === dads (min 58 moves)
echo --- regular dads
call runsuccess dads dads.goal medium
echo --- dads rotated 90 degrees
call runsuccess dads+90 dads+90.goal medium
echo --- dads rotated 180 degrees
call runsuccess dads+180 dads+180.goal medium
echo --- dads rotated 270 degrees
call runsuccess dads+270 dads+270.goal medium

echo === donkey (min 83 moves)
echo --- regular donkey
call runsuccess init.from.handout goal.1.from.handout medium
echo --- donkey rotated 90 degrees
call runsuccess handout.config.1+90 handout.goal+90 medium
echo --- donkey rotated 180 degrees
call runsuccess handout.config.1+180 handout.goal+180 medium
echo --- donkey rotated 270 degrees
call runsuccess handout.config.1+270 handout.goal+270 medium

echo === other
echo --- big tray
call runsuccess big.tray.4 big.tray.4.goal medium
echo --- blockado (needs 74 moves)
call runsuccess blockado blockado.goal medium

echo.
pause
