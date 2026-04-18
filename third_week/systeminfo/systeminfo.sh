#!/bin/bash


echo " Current System Information "

echo "=============Kernel Version============= "
uname -a 

echo "=====CPU  Information====="
lscpu | grep "Model name"

echo""
echo "====Memory Usage==="
free -h

echo""
echo "====Disk Usage===="
df -h


