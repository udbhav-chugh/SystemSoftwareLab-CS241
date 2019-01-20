which bash #shows bash info

$(PWD) #current working directory with path
$(PWD##*/) #only directory name

whoami #user name
hostname #Hostname

date +%d/%m/%Y #date in dd/mm/yyyy format


$RANDOM #to generate a random number

rev #reverse string

$HOME  # Prints the home directory name

printf "%d" "'$A" # Ascii value of A
printf "\x$(printf %x 65)" #int to char

chr() {
  [ "$1" -lt 256 ] || return 1
  printf "\\$(printf '%03o' "$1")"
}

ord() {
  LC_CTYPE=C printf '%d' "'$1"
}

can name hello or hello.sh not necessary to add .sh

#! ->shebang or hashbang 
#! /bin/bash -> shows interpreter tha its a bash shell script

chmod +x hello.sh
./hello.sh

#comment
: '
multi line
comment
'
<<lol
jaa
lol

system variable:
	defined in capital cases usually
userdefined variables:
	defined in lower cases usually

#wc and echo -n
wc -m //to count characters
echo -n "lol" | wc -m   // will give 3 now but if -n not included will give 4 since -n removes the extra new line automatically added by echo

#comparisions
-lt ->less than
-gt -> greater than
-le - >less and equal
-ge -> greater and equal
-eq -> equal to
-ne -> not equal


#if - elif - else
With if, elif --> Always use "then" With else --> Dont use "then"
e.g See q5
End with "fi"

$# #Number of command line arguments (starting from 0)

#traversing in line arguments
for i in $@ ; do	#statements 
done

$$i does not exist

#Outputting a variable:
e.g Addition "echo $(($var1+$var2))"
e.g. Reversing string "$( echo $str | rev )"


#printing decimal numbers:
echo "scale=2 ; $var1*$var2" | bc #scale implies precision also note $var1 *$var2 is applicable here whereas in general we have to put another dollar around it

#case esac
case "$str" in "pattern1") echo "1" ;;
	"pattern2") wcho "2" ;;
	........so on
esac

