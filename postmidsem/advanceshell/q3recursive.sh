# Recusrive method
operate(){
    cd $1

    ls -l | grep ^d | awk '{print $NF}' | while read dir
    do
        operate $dir
    done

    if [[ -f $1.exe ]]; then
        rm -r $1.exe
    fi

    if [[ -f $1.EXE ]]; then
        rm -r $1.EXE
    fi

    if [[ -f virusdefinition.virus ]]; then
        while read file
		do
			rm -r $file
		done < virusdefinition.virus
    fi

    cd ..
}

if [[ ! -z $1 ]]; then
    operate $1
fi