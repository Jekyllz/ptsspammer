#!/bin/bash


echo "these pts are available"
ls /dev/pts
echo "which pts do you want to annoy? : "
read ans


for i in {0..20};

do sleep 1;

echo "hello $i times" >> /dev/pts/$ans;

done
