#!/bin/bash
while :
do
echo "enter your name:"
read name
if  [ -z "$name" ]; then
	echo 'bye'
	break
fi

echo "enter your age:"
read age
if [ $age -eq 0 ]; then
	echo 'bye'
	break
fi

	if [[ $age -le 16 ]]; then 
		group="child"
	elif [[ $age -gt 16 ]] && [[ $age -lt 26 ]]; then
		group="youth"
	else
		group="adult"
	fi
	echo "$name, your group is $group"


done