#!/bin/bash

START=$(date +%s)
pwd
sleep 3

END=$(date +%s)

TOTAL=$((END-START))

echo time took: $TOTAL seconds

