unset ARRAYNAME[1] #To delete index-1 element
unset ARRAYNAME #To delete the whole Array
 
echo ${arr[@]//a/A} # Replacing Substring Temporary

echo ${arr[@]/*[aA]*/} # Search in Array 

echo ${#arr[@]} # Size of an Array     
echo ${#arr[*]} # Size of an Array 

echo ${#arr[0]} # Length of Particular element  
echo ${#arr} # Length of Particular element 


echo ${arr[@]:0} # To print elements from a particular index 
echo ${arr[@]:1:4} # To print elements in range 
echo ${arr[0] : 1} #to print elemnts from 1 index 

# To declare static Array  
arr=(prakhar ankit 1 rishabh manish abhinav) 
 
# To print all elements of array 
echo ${arr[@]} 

declare -a ARRAYNAME

ARRAYNAME=(value1 value2  .... valueN)
NUMS="1 2 3 4 5 6 7"
ARRAYNAME=([1]=10 [2]=20 [3]=30)

for i in ${arr[@]} ; do # traverse elements of array
for (( i=0; i<${#arr[@]} ; i++ )) ; do #traverse indexes of array

for elem in ${!count[@]} #traverse left side of map
for elem in ${count[@]} #traverse right side of map

arr=(Hello World)  // Assigns entire array with blank space
                    deilimiter

arr[0]=Hello  // Assign values by using index
arr[1]=World

echo ${arr[0]}  // Accessing a value using index

${arr[*]}  // All items in the array
${!arr[*]}  // All indexes in the array
${#arr[*]}  // Number of items in the array
${#arr[0]}  // Length of item 0

${array[$id]}  // Value at index stored in variable id

array=(one two [3]=three)  // Stores 'three' at index 3 instead of
                            index 2

Difference between * and @
    ${array[*]}  is equal to ${array[@]}  // Considers 'single item'
                                                as 1 item only

    arr=("${array[*]}")  // Considers all items of array as a
                        single item

    arr=(${array[*]})  // Considers all items of array as separate
                        words. blank spaces are not ignored

    arr=("${array[@]}")  // Returns each item of original array with
                            blank space
