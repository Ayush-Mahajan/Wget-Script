
echo **********WELCOME**********
INPUT_STRING=hello


#Log file of the program
LOGFILE=wget.log

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



#!/bin/sh

#default directories
wget=/usr/bin/wget
tar=/bin/tar

#exit f cannot find basic requirements
if[! -x "$wget"]; then
    echo "Cannot FInd wget... Exiting"
    exit 1
elif[! -x "$tar"]; then
    echo "Cannot Find tar... Exiting"
    exit 1
fi

#Outout Folder Name
DIR=website'date+%m%d"'

#log file
LOGFILE=wget.log

#Download url
WEBSITEURL=http://www.thegreatestshowmanmovie.com

#Change current working irectory
cd $DIR
#get the website and save it
wget $WEBSITEURL --mirror --convert-links --adjust-extension --page-requisites --no-parent --no-clobber --restrict-file-ame=windows -o

$LOGFILE

#change the current directory back
cd..

# compress(tar and)
