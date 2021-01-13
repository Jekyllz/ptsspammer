
#!/bin/bash

echo "these pts/users are available"
w
echo "which pts do you want to annoy? : "
read n
echo "options: "
echo "warning     1"
echo "spam random 2"
read nn
if [ $nn -eq 1 ];
then
echo "spamming warning..."
echo " "  >> /dev/pts/$n
echo "#############################################" >> /dev/pts/$n
echo "YOU ARE AN UNAUTHRORIZED USER" >> /dev/pts/$n
echo " I WILL COUNT TO 10 THEN KILL YOUR CONNECTION" >> /dev/pts/$n
echo "#############################################" >> /dev/pts/$n
for i in {0..10}
do echo "$i Mississippi..." >> /dev/pts/$n
sleep 1
done
pkill -9 -t pts/$n
elif [ $nn -eq 2 ];
then
echo "okay - spamming random .."
cat /dev/urandom >> /dev/pts/$n
else
echo "Sorry, try for the next time"
fi
