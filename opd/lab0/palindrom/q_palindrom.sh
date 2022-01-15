read input
len=$(expr length $input)

a_ind=$(($len / 2 - 1))
a=${input:$a_ind:1}

b_ind=$(($len / 2 + $len % 2))
b=${input:$b_ind:1}

middle=$(($len / 2))

while [ $a -eq $b ]
do
let "a_ind=$a_ind-1"
let "b_ind=$b_ind+1"

if [ $a_ind -eq "-1" ]
then
echo $input
exit
fi

a=${input:$a_ind:1}
b=${input:$b_ind:1}
done


#GENERATING FIRST PALINDROM
arr=(seq 1 $len)

for (( i=0; i <= $(($len - 1)); i++ ))
do
arr[$i]=${input:$i:1}
done

for (( i=0; i <= $(($len / 2 - 1)); i++ ))
do
arr[$(($len - 1 - $i))]=${arr[$i]}
done

f_palindrom=""

for i in $(seq 0 $(($len - 1)))
do
f_palindrom+=${arr[$i]}
done

#GENERATING SECOND PALINDROM
arr=(seq 1 $len)


for i in $(seq 0 $(($len - 1)))
do
arr[$i]=${input:$i:1}
done

if [ $a -gt $b ]
then

if [ $(($len % 2)) -eq "0" ]
then
arr[$a_ind]=$((${arr[$a_ind]} - 1))
else
arr[$middle]=$((${arr[$middle]} - 1))
fi

else

if [ $(($len % 2)) -eq "0" ]
then
arr[$a_ind]=$((${arr[$a_ind]} + 1))
else
arr[$middle]=$((${arr[$middle]} + 1))
fi

fi

for i in $(seq 0 $(($len / 2 - 1)))
do
arr[$(($len - 1 - $i))]=${arr[$i]}
done

s_palindrom=""

for i in $(seq 0 $(($len - 1)))
do
s_palindrom+=${arr[$i]}
done

#CALC DIFFS

f_diff=$(($f_palindrom - $input))

if [ $f_diff -lt 0 ]
then
let "f_diff = -1 * $f_diff"
fi

s_diff=$(($s_palindrom - $input))

if [ $s_diff -lt 0 ]
then
let "s_diff = -1 * $s_diff"
fi

if [ $f_diff -lt $s_diff ]
then
echo $f_palindrom
else
echo $s_palindrom
fi

echo $f_palindrom $s_palindrom








