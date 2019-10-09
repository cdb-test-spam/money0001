#!/bin/bash
now=$(date +%s)
for i in {1..2}; do 
    echo $i; 
    echo $now
    git co -b branch$now-$i
    echo $(date) >> README.md
    git add README.md
    git commit -m "commit $i"
    git push -u origin
    git co master
done