read input

len=$(expr length $input)

a_ind=$(($len / 2 - 1))
a=${input:$a_ind:1}

b_ind=$(($len / 2 + $len % 2))
b=${input:$b_ind:1}

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
echo $a $b
done
