#!/bin/bash
echo "get parameter with space"
echo "param_1: $1"
echo "param_2: $2"
echo "param_3: $3" 


# 测试传入参数（含有空格）
$ bash test.sh abc def ghl
get parameter with space
param_1: abc
param_2: def
param_3: ghl

$ bash test.sh abc d  ef ghl
get parameter with space
param_1: abc
param_2: d
param_3: ef

$ bash test.sh "abc" "d ef"  "ghl"
get parameter with space
param_1: abc
param_2: d ef
param_3: ghl
