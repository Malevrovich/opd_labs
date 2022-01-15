function isPalindrom {
for i in $(seq 0 $(((expr length $1) / 2 - 1)))
do
lhs=${1:$i:1}
rhs=${1:$(($(expr length $1) - $i - 1)): 1}
if [ $lhs != $rhs ]
then
return 0
fi
done
return 1
}

read input

len=$(expr length $input)
let 'len=len-1'
arr=($(seq 0 $len))

for i in $(seq 0 $len)
do
arr[$i]=${input:$i:1}
done

let 'len=len/2'

for i in $(seq 0 $len)
do
arr[$(($(expr length $input) - $i - 1))]=${arr[$i]}
done

palindrom1=""

for i in $(seq 0 $(($(expr length $input) - 1)))
do
palindrom1+="${arr[$i]}"
done

for i in $(seq 0 $(expr $input - $palindrom1))
do
str=$(expr $input + $i)
isPalindrom $str
if [ $? -eq 1 ]
then
echo $str
exit
else
echo "not $str"
fi
done

echo $palindrom1
