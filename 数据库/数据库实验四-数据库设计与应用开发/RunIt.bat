@echo off
title ����ʯ�ʹ�ѧ������ʦ��Java����SQL Server���ݿ⡣

echo �������������������¥B409������
set  path=C:\Program Files\Java\jdk1.8.0_65\bin;%Path%
set  classpath=.;C:\Program Files\Java\jdk1.8.0_65\jre\lib\rt.jar;.\sqljdbc42.jar
cls

echo 1.���ڱ���...
javac JavaToMsSQL.java

echo 2.����ִ��...
java JavaToMsSQL

pause
