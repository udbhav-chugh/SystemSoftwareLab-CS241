a='hello'
a="$ world" --> now a becomes hello world #concatenate two strings

#to print $ as it is
echo ' output is $job_ID' #in single quotes dollar printed as dollor
echo " output is \$job_ID" # if double quotes use backslash to print $

if comparing strings then use "==" instead of "-eq" also in strings put arguments in quotes eg: if [ "$str1" == "$str2" ]

${#str} #Identify String Length inside Bash Shell Script

# Extract a Substring from a Variable inside Bash Shell Script
${string:position} #position index starts at 0
${string:position:length} #extract a particular length string starting from pos

${string#substring} #Shortest Substring Match from beginning only - if not in beginning nothing happens

${string%substring} #deletes the shortest match of $substring from back of $string

${string##substring} #deletes the longest match of $substring from front of $string

${string%%substring} #deletes the longest match of $substring from back of $string

expr match "$string" '$substring' #Length of Matching Substring at Beginning of String

expr index $string $substring #Numerical position in $string of first character in $substring that matches.

${string/pattern/replacement} #Replace only first match

${string//pattern/replacement} #Replace all the matches

${string/#pattern/replacement} #pattern matches beginning of the $string.

${string/%pattern/replacement} #pattern matches end of the $string.

awk '{ print substr("'"${String}"'",3,4) }' //equivalent of ${string:pos:length}

awk 'print index("'"${String}"'", "skid") }' //equivalent of "expr index"
