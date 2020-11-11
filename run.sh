echo "running"
echo "write input"
chk=1
if [[ $3 == 'y' ]]
then
while read line
do
    if [[ $line == ""  ]]
    then
    break
    fi
    if (($chk==1))
    then
    echo $line > input.txt
    chk=0
    else
    echo $line >> input.txt
    fi
done
fi
if [[ $2 == 'py' ]]
then 
echo "running"
python ${1}.py < input.txt
else
echo "building"
g++ ${1}.cpp -o ${1}.out 
echo "running"
./${1}.out < input.txt
fi
