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
base_path="."
base_file="AndroidManifest.xml"

cd $root_path;

#this for .
function antmanagent(){

for file in 'ls $1'
do
local path=$1"/"$file
local name=$file
#local lastname=${file##*.};
 if [ [ -d $1"/"$file ] && [ -s $1"/"$file"/"$base_file ] ]
	##this is android project  
	cd $1"/"$file;
	printf "\nthis is android project\n"
	echo ls

  then
fi
then


	
}
