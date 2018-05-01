
echo **********WELCOME**********
INPUT_STRING=hello
while [ "$INPUT_STRING" != "bye" ]
    do
        echo Enter folder name :
        read a
        mkdir $a
        cd $a
        echo enter webpage link :
        read b
        wget --mirror --no-parent $b 
        echo "Type "bye" to quit"
        read INPUT_STRING
    done
