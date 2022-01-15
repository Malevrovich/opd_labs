function isPalindrom {
for i in $(seq 0 $(expr $(expr length $1) / 2 - 1))
do
lhs=${1:$i:1}
rhs=${1:$(expr $(expr length $1) - $i - 1): 1}
if [ $lhs != $rhs ]
then
echo "Not palindrom"
return 0
fi
done
echo "Palindrom!"
return 1
}

read inp
isPalindrom $inp
echo $?
