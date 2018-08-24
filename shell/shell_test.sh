#! /bin/bash

#### $取变量值的时候，给相应的变量加上大括号括起来是好的，帮助限制变量的边界

echo 'this is a shell script';
echo 'the first parameter is $1';


##### 新建变量测试
var="test_var"
echo $var
echo ${var}

##### for循环 
for skill in A B C；
do
    echo 'i am good at ${skill}lalala'
done

##### 只读变量 readonly
readonly var

##### 删除变量 unset
unset var  ## 不可删除只读变量

##### 字符串拼接
var1='hello, ${var} !'
var2='hello, '$var !'
echo $var1 $var2
>>> hello, ${var} ! hello, test_var !


##### 