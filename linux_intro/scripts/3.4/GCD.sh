#!/bin/bash

function gcd (){
    if [ $number_1 > $number_2 ]; then
       a=$number_1
       b=$number_2
    else
       b=$number_1
       a=$number_2
    fi
    
    let "c = a % b"
    if [ "c" = 0 ]; then
        echo "GCD is $b"
    else
        for i in {1..100}
        do
            let "c_1 = a % i" ; let "c_2 = b % i";
            if [[ "$c_1" -eq 0 ]] && [[ "$c_2" -eq 0 ]]; then
                let "nod = $i"
            fi
        done
        echo "GCD is $nod"
    fi
}

while true; do
read number_1 number_2
if [ -z "$number_1" ] || [ -z "$number_2" ]; then
    echo "bye"
    break
else
    gcd $number_1 $number_2
fi
done