#!/bin/bash

a=5
b=10

echo 1FFF
let "a=+b"
echo $a

echo 2FFF
let "a=$a+$b"
echo $a

echo 3FFF
a+=$b
echo $a

echo 4FFF
let a = a + b
echo $a

echo 5FFF
a=$a+$b
echo $a
