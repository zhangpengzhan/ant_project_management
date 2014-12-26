#!/bin/bash
#本脚本用于android的项目管理,ant编译
#Author：zhangpengzhan  Email：644606228@qq.com or chiyuehuanyi@163.com
#思路：首先执行本脚本，获取当前文件夹里边的文件的列表。
#1，循环收集好的列表，首先判断是否是文件夹
#如果是执行cd进入文件夹，验证是否是android项目。是的话执行执行ant命令，不是的话跳出验证下一个
#2，所有目录执行完成之后，提示用户完成操作
#注意不要把项目放进更深一级的目录，虽然我有能力做到但是我不会递归文件夹的
#ok this is a fun job , believe me      
#
#获取执行脚本所在目录的绝对路径
root_path=$(dirname $(readlink -f $0))
#脚本的相对路径
base_path="."
# android project 招牌文件
base_file="AndroidManifest.xml"
#移动当前目录到脚本所在的路径
cd $root_path;
ls
#this for . 遍历当前路径
function ant_managent(){
# for 循环
for file in `ls $1`
do
local path=$1"/"$file
local name=$file
echo "\n"  $path  "\n"
#local lastname=${file##*.};
#首先路径他的是一个文件夹
 if [ -d $path ] 
  then
	#进去瞅一眼，是不是 android project
	if [ -s $1"/"$file"/"$base_file  ]
	then
		##this is android project  
		cd $path;
		#移动进去，执行ant 命令
		ant debug
		printf "\nthis is android project\n"
		#完成之后出来，遍历下一个，移出当前文件夹
		cd ..

		else
		#不是 android project ， go next
		printf "\n this is not android , ok we go next \n"
	fi
 fi
done
	
}
IFS=$'\n'

ant_managent $base_path
