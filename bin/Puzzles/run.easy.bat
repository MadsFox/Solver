@echo off
REM DOS batch file to try solving the puzzles in easy.
REM Copy this file into the directory that contains your Solver and
REM Tester classes. Then just say
REM	    run.easy
REM in the DOS command window to try them all.

set classpath=.;

@echo off
echo Running easy puzzles
echo These should all say 'Verified', without any 'Wrong exit status' messages
echo *** Start with some solvable puzzles.

echo.
echo trying init.from.handout
java Solver easy/init.from.handout easy/goal.2.from.handout | java Tester easy/init.from.handout easy/goal.2.from.handout
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo.
echo trying 1x1
java Solver easy/1x1 easy/1x1.goal | java Tester easy/1x1 easy/1x1.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo.
echo trying 1x2, one block
java Solver easy/1x2.one.block easy/1x2.one.block.goal | java Tester easy/1x2.one.block easy/1x2.one.block.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo.
echo trying 1x2, two blocks
java Solver easy/1x2.two.blocks easy/1x2.two.blocks.goal | java Tester easy/1x2.two.blocks easy/1x2.two.blocks.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo.
echo trying easy
java Solver easy/easy easy/easy.goal | java Tester easy/easy easy/easy.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo.
echo trying full.1
java Solver easy/full.1 easy/easy.goal | java Tester easy/full.1 easy/easy.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo.
echo trying big.block.1
java Solver easy/big.block.1 easy/big.block.1.goal | java Tester easy/big.block.1 easy/big.block.1.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo.
echo trying big.block.2
java Solver easy/big.block.2 easy/big.block.2.goal | java Tester easy/big.block.2 easy/big.block.2.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo.
echo trying big.block.3
java Solver easy/big.block.3 easy/big.block.3.goal | java Tester easy/big.block.3 easy/big.block.3.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo.
echo trying big.block.4
java Solver easy/big.block.4 easy/big.block.4.goal | java Tester easy/big.block.4 easy/big.block.4.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo.
echo trying big.tray.2
java Solver easy/big.tray.2 easy/big.tray.2.goal | java Tester easy/big.tray.2 easy/big.tray.2.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo.
echo trying big.search.1
java Solver easy/big.search.1 easy/big.search.1.goal | java Tester easy/big.search.1 easy/big.search.1.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo.
echo trying big.search.2
java Solver easy/big.search.2 easy/big.search.2.goal | java Tester easy/big.search.2 easy/big.search.2.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo.
echo trying check.diff.blocks
java Solver easy/check.diff.blocks easy/check.diff.blocks.goal | java Tester easy/check.diff.blocks easy/check.diff.blocks.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo.
echo trying enormous.full.1
java Solver easy/enormous.full.1 easy/enormous.full.goal.1 | java Tester easy/enormous.full.1 easy/enormous.full.goal.1
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo.
echo trying enormous.full.1
java Solver easy/enormous.full.1 easy/enormous.full.goal.2 | java Tester easy/enormous.full.1 easy/enormous.full.goal.2
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo.
echo trying forced.match.1
java Solver easy/forced.match.1 easy/forced.match.1.goal | java Tester easy/forced.match.1 easy/forced.match.1.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo.
echo trying forced.match.1+90
java Solver easy/forced.match.1+90 easy/forced.match.1+90.goal | java Tester easy/forced.match.1+90 easy/forced.match.1+90.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo. 
echo trying forced.match.2
java Solver easy/forced.match.2 easy/forced.match.2.goal | java Tester easy/forced.match.2 easy/forced.match.2.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo. 
echo trying immed.match.0
java Solver easy/immed.match.0 easy/immed.match.0.goal | java Tester easy/immed.match.0 easy/immed.match.0.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo.
echo trying immed.match.1
java Solver easy/immed.match.1 easy/immed.match.1.goal | java Tester easy/immed.match.1 easy/immed.match.1.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo. 
echo trying immed.match.2
java Solver easy/immed.match.2 easy/immed.match.2.goal | java Tester easy/immed.match.2 easy/immed.match.2.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo. 
echo trying immed.match.2+90
java Solver easy/immed.match.2+90 easy/immed.match.2+90.goal | java Tester easy/immed.match.2+90 easy/immed.match.2+90.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo. 
echo trying immed.match.2+180
java Solver easy/immed.match.2+180 easy/immed.match.2+180.goal | java Tester easy/immed.match.2+180 easy/immed.match.2+180.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo. 
echo trying immed.match.2+270
java Solver easy/immed.match.2+270 easy/immed.match.2+270.goal | java Tester easy/immed.match.2+270 easy/immed.match.2+270.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo. 
echo trying instant.match.0
java Solver easy/instant.match.0 easy/instant.match.0.goal | java Tester easy/instant.match.0 easy/instant.match.0.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo.
echo trying instant.match.1
java Solver easy/instant.match.1 easy/instant.match.1.goal | java Tester easy/instant.match.1 easy/instant.match.1.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo.
echo trying instant.match.1+90
java Solver easy/instant.match.1+90 easy/instant.match.1+90.goal | java Tester easy/instant.match.1+90 easy/instant.match.1+90.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo.
echo trying instant.match.2
java Solver easy/instant.match.2 easy/instant.match.2.goal | java Tester easy/instant.match.2 easy/instant.match.2.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo. 
echo trying instant.match.3
java Solver easy/instant.match.3 easy/instant.match.3.goal | java Tester easy/instant.match.3 easy/instant.match.3.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo.
echo trying instant.match.3+90
java Solver easy/instant.match.3+90 easy/instant.match.3+90.goal | java Tester easy/instant.match.3+90 easy/instant.match.3+90.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo. 
echo trying no.move.1
java Solver easy/no.move.1 easy/no.move.1.goal.6 | java Tester easy/no.move.1 easy/no.move.1.goal.6
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo. 
echo trying no.move.2
java Solver easy/no.move.2 easy/no.move.2.goal.6 | java Tester easy/no.move.2 easy/no.move.2.goal.6
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo. 
echo trying no.move.3
java Solver easy/no.move.3 easy/no.move.3.goal.6 | java Tester easy/no.move.3 easy/no.move.3.goal.6
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo. 
echo trying 140x140
java Solver easy/140x140 easy/140x140.goal | java Tester easy/140x140 easy/140x140.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo. 
echo trying small.search
java Solver easy/small.search easy/small.search.goal | java Tester easy/small.search easy/small.search.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo. 
echo trying small.search+90
java Solver easy/small.search+90 easy/small.search+90.goal | java Tester easy/small.search+90 easy/small.search+90.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo. 
echo trying tree+90
java Solver easy/tree+90 easy/tree+90.goal | java Tester easy/tree+90 easy/tree+90.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo. 
echo trying tree+180
java Solver easy/tree+180 easy/tree+180.goal | java Tester easy/tree+180 easy/tree+180.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo. 
echo trying tree+270
java Solver easy/tree+270 easy/tree+270.goal | java Tester easy/tree+270 easy/tree+270.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo. 
echo trying tree
java Solver easy/tree easy/tree.goal | java Tester easy/tree easy/tree.goal
if %ERRORLEVEL% NEQ 0 echo *** Wrong exit status
REM Tester will verify if status is correct

echo. 
echo *** Now try some unsolvable puzzles.
echo. 
echo trying enormous.3
java Solver easy/enormous.3 easy/enormous.deadend.1
if %ERRORLEVEL% EQU 0 (echo *** Wrong exit status) else echo Verified

echo. 
echo trying enormous.full.1
java Solver easy/enormous.full.1 easy/enormous.full.deadend.2
if %ERRORLEVEL% EQU 0 (echo *** Wrong exit status) else echo Verified

echo. 
echo trying full.2
java Solver easy/full.2 easy/easy.goal 
REM java Checker easy/full.2 easy/easy.goal
if %ERRORLEVEL% EQU 0 (echo *** Wrong exit status) else echo Verified

echo. 
echo trying impossible.1
java Solver easy/impossible.1 easy/impossible.1.goal
if %ERRORLEVEL% EQU 0 (echo *** Wrong exit status) else echo Verified

echo. 
echo trying impossible.1+90
java Solver easy/impossible.1+90 easy/impossible.1+90.goal
if %ERRORLEVEL% EQU 0 (echo *** Wrong exit status) else echo Verified

echo. 
echo trying impossible.3
java Solver easy/impossible.3 easy/impossible.3.goal
if %ERRORLEVEL% EQU 0 (echo *** Wrong exit status) else echo Verified

echo. 
echo trying impossible.3x4
java Solver easy/impossible.3x4 easy/impossible.3x4.goal.1
if %ERRORLEVEL% EQU 0 (echo *** Wrong exit status) else echo Verified

echo. 
echo trying impossible.4
java Solver easy/impossible.4 easy/impossible.4.goal
if %ERRORLEVEL% EQU 0 (echo *** Wrong exit status) else echo Verified

echo. 
echo trying impossible.4+90
java Solver easy/impossible.4+90 easy/impossible.4+90.goal
if %ERRORLEVEL% EQU 0 (echo *** Wrong exit status) else echo Verified

echo. 
echo trying impossible.4+180
java Solver easy/impossible.4+180 easy/impossible.4+180.goal
if %ERRORLEVEL% EQU 0 (echo *** Wrong exit status) else echo Verified

echo. 
echo trying impossible.4+270
java Solver easy/impossible.4+270 easy/impossible.4+270.goal
if %ERRORLEVEL% EQU 0 (echo *** Wrong exit status) else echo Verified

echo. 
echo trying impossible.4x3
java Solver easy/impossible.4x3 easy/impossible.4x3.goal.1
if %ERRORLEVEL% EQU 0 (echo *** Wrong exit status) else echo Verified

echo. 
echo trying no.move.1
java Solver easy/no.move.1 easy/no.move.1.deadend.goal.6
if %ERRORLEVEL% EQU 0 (echo *** Wrong exit status) else echo Verified

echo. 
echo trying no.move.2
java Solver easy/no.move.2 easy/no.move.2.deadend.goal.6

echo.
echo trying no.move.3
java Solver easy/no.move.3 easy/no.move.3.deadend.goal.6
if %ERRORLEVEL% EQU 0 (echo *** Wrong exit status) else echo Verified

echo. 
echo trying one.move.1
java Solver easy/one.move.1 easy/one.move.1.deadend.goal.6
if %ERRORLEVEL% EQU 0 (echo *** Wrong exit status) else echo Verified

echo.
pause

