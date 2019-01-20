find temp #lists directory temp and all subfolders and directory
find -type f
find -name "name.txt"
find -iname "name.txt" # case insensitive
find -name "*.js" -or -name "*.css" -type f #either .js or .css
find -not -name "*.js" -type f #files not ending in .js
find \( -name "*.js" -type f \) -or -type d #to group two finds
find -name "whatever" , -name "*.html" #it evaluates both of them, but only returns the value of the second one.
find #we also have -and
find -type f -print # print all files
find -name "*~" -delete #delete all files ending in ~ ->temporary files
find -name "*~" -exec rm {} \; #takes an undefined number of parameters representing a command that it’s going to run on every selected files. It stops “consuming” arguments as soon as it sees a ;
find -maxdepth 1 #search only in current directory
find -name "temp" -prune #it only lists directories that it ignores
find -size 0 #all of size 0
