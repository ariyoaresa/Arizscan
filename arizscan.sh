#!/bin/bash

echo -e "\e[33m

  /\  ._ o _
 /--\ |  | /_
  __
 (_   _  _. ._  ._   _  ._
 __) (_ (_| | | | | (/_ |

\e[0m"
echo "This is to test my loop skills"
echo "Enter the ip address(es) you want to scan"
read ip
for x in $ip;
do
if      ping -q -c 2 -w 1 $x > /dev/null; then
        echo "$x is up"
else
        echo "$x is down"
fi
done
