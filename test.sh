#! bin/bash

# コメント
echo "hello"

# 入力（pythonでいうinput）
# read NAME
# echo "Hello, $NAME!"

## 変数の定義
# =の前後にスペースを入れるとエラーになる
NUM=5
COMMENT=Hello-world
echo $NUM
echo $COMMENT

## スペースを含む文字列を代入
# ダブルクオーテーション
COMMENT="Hello World"
echo $COMMENT

## 変数にコマンドの結果を代入
HOSTNAME=`ls`
echo $HOSTNAME

NUM=${1}
STRING=${2}

echo "引数1は${NUM}"
echo "引数2は${STRING}"

# 配列
ARRAY=(1 2 3 4 5)

# 先頭を出力
echo $ARRAY

# 任意の配列番号を参照
echo "${ARRAY[3]}"

# 配列の全ての要素を出力
echo "${ARRAY[@]}"

# for文
for i in `seq 0 5`
do
  echo $i
done

ARRAY=(January February March April May June July August September October November December)

for i in ${ARRAY[@]}
do
  echo $i
done

# while文
count=0

while [ $count -lt 5 ]
do
 count=$((++count))
 echo $count
done

while read line
do
  echo $line
done < test.txt

# if文
NUMS=(1 2 3 4 5 6 7 8 9 10)
STRINGS=(January February March April May June July August September October November December)

echo "===========TEST1==========="
for num in ${NUMS[@]}
do
  if [ $num -gt 5 ]; then
    echo "$numは5より大きいです。"
  else
    echo "$numは5以下です。"
  fi
done
echo "===========TEST2==========="
for num in ${NUMS[@]}
do
  if [ $num -le 5 ]; then
    echo "$numは5以下です。"
  else
    echo "$numは5より大きいです。"
  fi
done
echo "===========TEST3==========="
for str in ${STRINGS[@]}
do
  if [ $str = "January" ];then
    echo "$str は1月です"
    touch /tmp/jaunary.txt
  else
    echo "$str は1月ではありません。"
  fi
done
echo "==========================="
