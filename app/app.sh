#!/bin/bash
touch /tmp/index.html

while true
do
 text=`/usr/games/fortune`
 echo $text

index=$(cat <<-END

<!DOCTYPE html>
<html>
 <head>
   <title>Fortune</title>
 </head>
 <body>
 $text
 </body>
</html>
END
)
 sleep 5
 echo $index
 rm -rf /tmp/index.html
 echo $index > /tmp/index.html
done
