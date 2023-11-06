#!/bin/bash

# 列出所有共享内存段
ipcs -m

# 通过循环遍历并删除每个共享内存段
for id in $(ipcs -m | awk '$6 == 0 {print $2}'); do
    ipcrm -m $id
    echo "删除共享内存段 $id"
done
