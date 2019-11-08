#!/bin/bash
for s in $(ls rp*.txt); do
test=`cat $s | awk '{sum+=$5} END{print sum}'`
echo $s $test
done
