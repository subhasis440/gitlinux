#!/bin/bash
MAT=1234567890subhaiotrgeln@._

LEN=$1

while [ ${n=1} -le $LEN ]
do
	PASS=$PASS${MAT:$(($RANDOM%${#MAT})):1}
	let n++
done

echo $PASS
