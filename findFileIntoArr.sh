array=()
while IFS=  read -r -d $'\0'; do
    array+=("$REPLY")
done < <(find *.json  ${input} -print0)
for x in "${array[@]}" 
do
    echo $x
done
