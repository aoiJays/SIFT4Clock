# 设定起始编号
i=1

# 遍历文件夹中的所有.jpg文件
for file in *.jpg
do
  # 如果文件数量超过23，则退出循环
  if [ $i -gt 100 ]
  then
    break
  fi

  # 重命名文件
  mv "$file" "test$i.jpg"
  
  # 编号递增
  let i=i+1
done
