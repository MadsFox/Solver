echo "Checking a puzzle in 100 seconds"
ulimit -t 100
testdir=$3
/bin/rm -f /tmp/out$$
echo $1 " " $2
java -Xmx1G -Xss1G Solver $testdir/$1 $testdir/$2 > /tmp/out$$
if test "$?" -ne 0
then
    echo "*** Wrong exit status"
fi
java Tester $testdir/$1 $testdir/$2 < /tmp/out$$
if test "$?" -ne 0
then
    echo "*** Incorrect solver output"
fi
/bin/rm -f /tmp/out$$
echo " "

