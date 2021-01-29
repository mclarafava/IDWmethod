#!/bin/bash
 
# Declare an array of string with type
declare -a alphas=("1" "2" "3" "4" "5")
declare -a thresholds=("10" "20" "30" "40" "50" "60" "70" "80" "90" "100" "110" "120" "130" "140" "150" "160" "170" "180" "190" "200") 

# Iterate the string array using for loop
for alpha in ${alphas[@]}; do
    for threshold in ${thresholds[@]}; do
	echo Rodando com threshold $threshold e alpha $alpha
        python3 method_IDW+.py $threshold $alpha
    done 
done