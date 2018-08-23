# awk是按照行处理的。比如对文件进行按行处理，也可以对能打印到屏幕上的查询结果按照行理解来进行处理，比如下面对hive表进行大小统计。


# 以逗号分隔test1.txt，打印第1、2、3字段，并且以分号作为分隔符。最后重定向到test1_1.txt中
cat test1.txt | awk -F ',' '{print $1,$2,$3}' OFS=';' > ./test1_1.txt


cat test1.txt | awk -F ',' '{print $1 "@" $2 "&" $3}' > ./test1_2.txt

# 打印每行字段数
cat test1.txt | awk -F ',' '{print NF}'

# 打印出有字段匹配上tea或者wor或者22的整行
cat test1.txt | awk -F ',' '/tea|wor|22/{print $0}' > ./test1_3.txt

# 如果第三个字段匹配上tea，则打印出该第三个字段
cat test1.txt | awk -F ',' '$3~/tea/{print $3}' > test1_4.txt

# 查看hive表大小（方便的可以统计分区表大小！），并且输出为单位为G
hadoop fs -du hdfs:XXXXXX | awk '{SUM += $1} END {print SUM/(1024*1024*1024)}'
