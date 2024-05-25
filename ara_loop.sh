#!/bin/bash

ARY=(hel she kio nsu lll ooo wudn jsal)
CNT=1

for i in ${ARY[@]};
do
	echo $CNT.$i;
    	((CNT++));
done
