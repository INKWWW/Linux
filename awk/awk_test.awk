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

# 查看hive表大小（方便地统计分区表大小！），并且输出单位为G
hadoop fs -du hdfs:XXXXXX | awk '{SUM += $1} END {print SUM/(1024*1024*1024)}'

# 替换数据中的好坏为0/1标签 （以逗号为分隔符取出数据，替换‘好’为0并且赋值给第6项，替换‘坏’为1并且赋值给第6项。然后打印整行，以逗号分隔。重定向到xxx.txt）
cat xx.txt | awk -F ',' '{sub(/好/, "0", $6);sub(/坏/, "1", $6);print $0}' OFS=',' > ./xxx.txt