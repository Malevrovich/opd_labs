wc -m lab0/kricketune5/* >/tmp/task4.log 2>&1

ls -lR | grep ' v.*$' | tail -4 | sort -k2
echo && echo

cat -b g* */g* */*/g* */*/*/g* 2>/tmp/task4_3.log | sort -k2

ls -lR | grep '-' | tail -3 | sort -k2
echo && echo

cd lab0/kricketune5
ls -lR 2>/tmp/task4_5.log | sort -k2 -r
