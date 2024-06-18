#!/bin/bash
num=$(find . -type f -name 'poster*' | wc -l)
mv "poster.png" "poster1.png"
eval 'names=(poster{1..'"$num"'}.png)'
eval 'new_names=($(shuf -e poster{1..'"$num"'}.png.tmp))'
for n in "${!names[@]}";
do
   mv "${names[$n]}" "${new_names[$n]}";
done
rename 's/\.tmp$//' *.tmp
mv "poster1.png" "poster.png"