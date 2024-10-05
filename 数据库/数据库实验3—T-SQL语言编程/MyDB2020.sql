Use master
go
if exists (select * from sysdatabases where name='MyDb')
  Drop Database MyDb
Go

Create  database MyDb
Go
Use MyDb
Go

Create Table  IpTable
(
 iId int identity Constraint PK_Ip_id Primary Key,
 vHostName varchar(20) Not NULL,
 vIp varchar(15) Not NULL,
 vRoomNo  varchar(20) Not NULL
)
Go
--不允许数据重复
Create Unique Index idxHostNmae  On  IpTable(vHostName)
Create Unique Index idxIP  On  IpTable(vIp )
Go

--插入样例数据
Insert into  IpTable values('B413-10','172.23.254.190','SWPU明理楼B-413')
Insert into  IpTable values('B413-11','172.23.254.191','SWPU明理楼B-413')
Insert into  IpTable values('B413-12','172.23.254.192','SWPU明理楼B-413')
Insert into  IpTable values('B413-13','172.23.254.193','SWPU明理楼B-413')
Insert into  IpTable values('B413-14','172.23.254.194','SWPU明理楼B-413')
Insert into  IpTable values('B413-15','172.23.254.195','SWPU明理楼B-413')
Insert into  IpTable values('B413-16','172.23.254.196','SWPU明理楼B-413')
Insert into  IpTable values('B413-17','172.23.254.197','SWPU明理楼B-413')
Insert into  IpTable values('B413-18','172.23.254.198','SWPU明理楼B-413')
Insert into  IpTable values('B413-19','172.23.254.199','SWPU明理楼B-413')
Go


--创建一个视图
Create view vwIp
as 
select iId as 自增编号,vHostName as 主机名 ,vIp as IP地址,vRoomNo  as 房间号 from IpTable
Go

--创建账号
Use master
go
Create Login  iot2018 with password='123456'
Go
Use MyDb
Go
CREATE USER iot2018 FOR LOGIN iot2018      WITH DEFAULT_SCHEMA = MyDb
Go
--授权
grant Select On IpTable to iot2018
grant Select On vwIp to iot2018


--显示数据
select * from vwIp