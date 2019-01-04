#!/bin/bash

if [[ $# -eq 1 ]]; then   # 如果输入的参数个数为1
    echo "first step ok"
    #statements
    if [[ $? -eq 0 ]]; then   # 如果上一个指令返回值为0.（0 为 true）
        echo "step 2 now"
        #statements
        val=`expr 1 + 2 + 3`
        echo "the sum is $val"
    fi
else
    echo "the number of input param is not one"
fi


