echo enter new folder name
read a
mkdir $a
echo name enter webpage link:


function validate_url(){
  if [[ `wget -S --spider $1  2>&1 | grep 'HTTP/1.1 200 OK'` ]]; then echo "true"; fi
}
