@echo off
set classpath=.;
echo ====================================================================
echo Running hard puzzles
echo === century (100 moves) and century 1.5 (150 moves)
echo --- test 1
call runsuccess handout.config.2 goal.1.from.handout hard
echo --- test 2
call runsuccess century+180 century+180.goal hard
echo --- test 3
call runsuccess handout.config.2 century.1.5.goal hard
echo --- test 4
call runsuccess century+180 century.1.5+180.goal hard

echo === tests with lots of blocks or space
echo --- test 5
call runsuccess big.tray.4 many.blocks.20.goal hard
echo --- test 6
call runsuccess big.tray.4 many.blocks.20+180.goal hard
echo --- test 7
call runsuccess big.tray.4 many.blocks.100.goal hard
echo --- test 8
call runsuccess big.tray.1 big.tray.1.goal hard
echo --- test 9
call runsuccess big.tray.3 big.tray.3.goal hard

echo === more tests
echo --- test 10 (77? moves)
call runsuccess c22 22.goal hard
echo --- test 11 (40 moves)
call runsuccess c25 15.23-27.30.41.goal hard
echo --- test 12 (49 moves)
call runsuccess c26 15.23-27.30.41.goal hard
echo --- test 13 (113 moves)
call runsuccess c43-45 45.goal hard
echo --- test 14 (71? moves)
call runsuccess c46 46.goal hard

echo === tests with 6x5 boards
echo --- test 15 (55 moves, 6x5)
call runsuccess c53 53.54.64.goal hard
echo --- test 16 (44 moves, 6x5)
call runsuccess c54 53.54.64.goal hard
echo --- test 17 (48 moves, 6x5)
call runsuccess c55 55.56.goal hard
echo --- test 18 (47 moves, 6x5)
call runsuccess c64 53.54.64.goal hard

echo === tests with 6x6 boards
echo --- test 19 (103 moves, 6x6)
call runsuccess c71 71.goal hard
echo --- test 20 (needs 103 moves)
call runsuccess pandemonium pandemonium.goal hard

echo === more hard puzzles
echo --- test 21 (needs 123 moves)
call runsuccess supercompo supercompo.goal hard
echo --- test 22 (needs 81 moves)
call runsuccess lane.rouge lane.rouge.goal hard
echo --- test 23 (needs 209 moves)
call runsuccess d209 d209.goal hard
echo --- test 24 (needs 231 moves)
call runsuccess little.house little.house.goal hard
echo --- test 25 (needs 138 moves)
call runsuccess super.century super.century.goal hard
echo --- test 26
call runsuccess super.century2 super.century2.goal hard
echo --- test 27
call runsuccess quzzle quzzle.goal hard

echo.
pause
