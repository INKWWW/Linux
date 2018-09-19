#!/bin/bash

hive -f /home/XXX/query_hql_inShell.sql  --hivevar source_table=$1 --hivevar row_num=$2