#!/bin/bash
for s in $(ls rp*.txt); do
test=`cat $s | awk '{sum+=$5} END{print sum}'`
if [ test -eq 0 ]; then
echo $s
cat $s | awk '{print $1,$2,$3,$4}' > FourColumn/${s}
fi
done
