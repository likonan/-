@echo off
title 西南石油大学周永老师，Java访问SQL Server数据库。

echo 本批处理仅适用于明理楼B409机房。
set  path=C:\Program Files\Java\jdk1.8.0_65\bin;%Path%
set  classpath=.;C:\Program Files\Java\jdk1.8.0_65\jre\lib\rt.jar;.\sqljdbc42.jar
cls

echo 1.正在编译...
javac JavaToMsSQL.java

echo 2.正在执行...
java JavaToMsSQL

pause
