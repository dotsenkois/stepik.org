#!/bin/bash

function main() {
    declare -a list_of_operations=("+" "-" "*" "/" "%" "**")

    if [ -n "$operand_1" ] && [ -n "$operation" ] && [ -n "$operand_2" ]; then
            if [[ " ${list_of_operations[*]} " =~ "${operation}" ]]; then
                if [[ "+" =~ "${operation}" ]]; then
                    let "res = $operand_1 + $operand_2"
                elif [[ "-" =~ "${operation}" ]];then
                    let "res = $operand_1 - $operand_2"
                elif [[ "*" =~ "${operation}" ]];then
                    let "res = $operand_1 * $operand_2"
                elif [[ "/" =~ "${operation}" ]];then
                    let "res = $operand_1 / $operand_2"
                elif [[ "%" =~ "${operation}" ]];then
                    let "res = $operand_1 % $operand_2"
                elif [[ "**" =~ "${operation}" ]];then
                    let "res = $operand_1 ** $operand_2"
                fi
                echo $res
            else
                echo "error"
                exit
            fi
    else
        if [ $operand_1 = "exit" ]; then
            echo "bye"
            exit 0
        else
            echo "error"
            exit 
        fi
    fi
}


while true
do
    read operand_1 operation operand_2
    main $operand_1 $operation $operand_2
done
