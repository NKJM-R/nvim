#/bin/sh
name=$1
docker run -id --name $name -v `pwd`:/root/project nvim-docker bash
#プロジェクトルートに配置して起動する用のスクリプト
