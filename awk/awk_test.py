cat log_3001004_new_20180806.txt |awk -F ';' '{print $1}'|awk  -F '|' '{print $1,$2,$8,$9}' > ./log_3001004_new_20180806_JIEXI.txt 


cat test1.txt | awk -F ',' '{print $1,$2,$3}' OFS=';' > ./test1_1.txt


cat test1.txt | awk -F ',' '{print $1 "@" $2 "&" $3}' > ./test1_2.txt


cat test1.txt | awk -F ',' '{print NF}'


cat test1.txt | awk -F ',' '/tea|wor|22/{print $0}' > ./test1_3.txt


cat test1.txt | awk -F ',' '$3~/tea/{print $3}' > test1_4.txt
