#!/bin/bash

count_1=`hive -e "select count(*) from database_name.table_name;"`
echo ${count_1}