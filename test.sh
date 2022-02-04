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
