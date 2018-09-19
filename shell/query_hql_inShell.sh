#!/bin/bash

hive -f /home/hanmo.wang/check2.sql  --hivevar source_table=$1 --hivevar row_num=$2