#! /bin/bash
echo "Hello World"

echo "lol" $BASH
echo "lmao $BASH_VERSION"
echo $PWD
echo $HOME

name=Mark
echo $name

read -p 'username: ' user_var
read -sp 'password: ' pass_var
echo $user_var

echo "enter names: "
#read an array
read -a names
echo "Names:  ${names[1]} "