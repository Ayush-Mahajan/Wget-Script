
echo **********WELCOME**********
echo Enter website URL and see it later even if you are offline
INPUT_STRING=hello

#default directories
wget=/usr/bin/wget
tar=/bin/tar

#exit f cannot find basic requirements
if [ ! -x "$wget" ]
    echo "Cannot Find wget in your computer... Sorry cannt run this on your computer"
    exit 1
elif [ ! -x "$tar" ]
    echo "Cannot Find tar in cpmuter... cannot run this program. find a computer which has tar"
    exit 1
fi

#Log file of the program
LOGFILE=wget.log

while [ "$INPUT_STRING" != "bye" ]
    do
        # Loop entry point
        # folder name is taken from the User
        echo Enter folder name :
        read a
        mkdir $a
        cd $a
        
        #webpage URL input
        echo enter webpage link :
        read b
        
        #code to check the levels of website the user wants to download
        echo enter the leves you want to download:
        read c
        
        #code to check if the user wants to throttle down the speed or not
        echo do you want to throttle down the net speed:
        read ans
        
        # check the user input
        if [$ans = 'y' || $ans = 'Y']
            echo enter the speed limit:
            read s
            wget -r -|$c --limit-rate=$s --adjust-extension --no-clobber --no-parent $b
        else
            wget -r -|$c --mirror --adjust-extension --no-clobber --no-parent $b 
        fi
        echo "Type "bye" to quit"
        read INPUT_STRING
    done


////////////////////////////////////////////////////////////////////////////////////////////////////////////////
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
