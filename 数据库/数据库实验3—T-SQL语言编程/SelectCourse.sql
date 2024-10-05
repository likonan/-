Use master
go

CREATE DATABASE SelectCourse     --�������ݿ�
ON PRIMARY
(
NAME='SelectCourse_data',            --�������ļ����߼���
FILENAME='D:\SelectCourse.mdf',  --�������ļ���������
SIZE=10MB,                        --��ʼ��С
FILEGROWTH=10%                 --������
)
log ON
(
NAME='SelectCourse_log',
	FILENAME='D:\SelectCourse.ldf', --��־�ļ����߼���
	SIZE=1MB,                      --��־�ļ���������
	MAXSIZE=20MB,
FILEGROWTH=10%
)
go

use SelectCourse
go


/****** Object:  Table [dbo].[Teacher]    Script Date: 2017/11/7 9:07:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teacher](
	[Tno] [char](10) NOT NULL,
	[Tname] [char](20) NOT NULL,
	[Tsex] [char](2) NOT NULL,
	[Tdept] [char](20) NOT NULL,
	[Tage] [tinyint]IDENTITY(1,1) NOT NULL,
	[Tprot] [char](10) NOT NULL,
	[Tel] [char](15) NOT NULL,
	[EMAIL] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Tno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher] ON
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tdept],[Tage],[Tprot],[Tel],[EMAIL]) VALUES ('2003001','������','��','�������ѧѧԺ',48,'����','15000000000','liujianzhong@163.com')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tdept],[Tage],[Tprot],[Tel],[EMAIL]) VALUES ('2003002','�ܸ�','��','�������ѧѧԺ',45,'������','15200000000','zhoufu@163.com')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tdept],[Tage],[Tprot],[Tel],[EMAIL]) VALUES ('2006001','��Ƽ','Ů','����ѧԺ',39,'��ʦ','15300000000','chenping@sina.com')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tdept],[Tage],[Tprot],[Tel],[EMAIL]) VALUES ('2006002','������','Ů','����ѧԺ',46,'������','15900000000','wqingxian@126.com')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tdept],[Tage],[Tprot],[Tel],[EMAIL]) VALUES ('2008001','���','��','����ѧԺ',35,'��ʦ','18100000000','lichen@sina.com')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tdept],[Tage],[Tprot],[Tel],[EMAIL]) VALUES ('2008002','����ɽ','��','����ѧԺ',47,'����','13100000000','zlianshan@126.com')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tdept],[Tage],[Tprot],[Tel],[EMAIL]) VALUES ('2009001','����','Ů','��ѧԺ',46,'������','13500000000','zhouqing@sina.com')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tdept],[Tage],[Tprot],[Tel],[EMAIL]) VALUES ('2010001','����','��','��ѧԺ',34,'��ʦ','18900000000','wangmin@163.com')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tdept],[Tage],[Tprot],[Tel],[EMAIL]) VALUES ('2011001','����','��','�������ѧѧԺ',32,'��ʦ','13100000000','fangxiong@126.com')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tdept],[Tage],[Tprot],[Tel],[EMAIL]) VALUES ('2012001','����ƽ','��','��ѧԺ',50,'����','13900000000','cpeiping@sina.com')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tdept],[Tage],[Tprot],[Tel],[EMAIL]) VALUES ('2012002','ף��','��','ʯ�͹���ѧԺ',43,'������','13400000000','zhubo@163.com')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tdept],[Tage],[Tprot],[Tel],[EMAIL]) VALUES ('2013001','��ѧ��','��','ʯ�͹���ѧԺ',36,'��ʦ','18200000000','lxuefu@126.com')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tdept],[Tage],[Tprot],[Tel],[EMAIL]) VALUES ('2014001','�Ű���','Ů','ʯ�͹���ѧԺ',46,'����','13400000000','zaifang@sina.com')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tdept],[Tage],[Tprot],[Tel],[EMAIL]) VALUES ('2014002','������','Ů','ʯ�͹���ѧԺ',48,'����','13300000000','tzhengru@163.com')
SET IDENTITY_INSERT [dbo].[Teacher] OFF


/****** Object:  Table [dbo].[Student]    Script Date: 2017/11/7 9:36:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[Sno] [char](10) NOT NULL,
	[Sname] [char](20) NOT NULL,
	[Ssex] [char](2) NOT NULL,
	[Smajor] [char](20) NOT NULL,
	[Sdept] [char](20) NOT NULL,
	[Sage] [tinyint]IDENTITY(1,1) NOT NULL,
	[Tel] [char](15) NOT NULL,
	[EMAIL] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Sno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO 
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('G2016001','������','Ů','��������','����ѧԺ',22,'15600000000','susu@sina.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('G2016002','��Ƽ','Ů','��������','����ѧԺ',21,'15300000000','zhuping@163.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('G2016003','Ҷ��ԣ','��','�������','����ѧԺ',20,'15800000000','jiayu@126.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('G2016004','�˼���','Ů','�������','����ѧԺ',20,'15600000000','jiaru@sina.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('G2016005','����','Ů','�������','����ѧԺ',21,'15400000000','gaoxiao@163.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('J2016001','�','��','�����Ӧ��','�������ѧѧԺ',20,'15200000000','yanghua@163.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('J2016002','��ȫ��','Ů','�����Ӧ��','�������ѧѧԺ',21,'15300000000','liuqunz@163.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('J2016003','����','��','�������ѧ','�������ѧѧԺ',21,'15500000000','wangguo@163.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('J2016004','����','��','�������ѧ','�������ѧѧԺ',21,'15400000000','sunrong@sina.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('J2016005','����','Ů','��Ϣ��ȫ','�������ѧѧԺ',20,'15500000000','hujuan@126.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('L2016001','��ï��','��','�����ѧ','��ѧԺ',20,'18100000000','zmaohua@126.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('L2016002','����','��','�����ѧ','��ѧԺ',21,'18200000000','fangjie@163.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('L2016003','����','Ů','������ѧ','��ѧԺ',20,'18300000000','liuke@126.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('L2016004','��һ��','��','������ѧ','��ѧԺ',21,'18600000000','hyiqiu@sina.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('L2016005','����','��','������ѧ','��ѧԺ',20,'18200000000','tangzhi@sina.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('L2016006','����','��','������ѧ','��ѧԺ',20,'18300000000','hanyun@126.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('S2016001','�촨','��','ʯ�͹���','ʯ�͹���ѧԺ',20,'18000000000','xuchuan@126.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('S2016002','����','��','ʯ�͹���','ʯ�͹���ѧԺ',21,'18100000000','tanghong@sina.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('S2016003','������','Ů','��������','ʯ�͹���ѧԺ',20,'18600000000','mqiuting@163.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('S2016004','��Ӣ','Ů','��������','ʯ�͹���ѧԺ',20,'18700000000','zhouying@sina.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('S2016005','����','��','��������','ʯ�͹���ѧԺ',21,'13200000000','caolin@126.com')
SET IDENTITY_INSERT [dbo].[Student] OFF

/****** Object:  Table [dbo].[Course]    Script Date: 2017/11/7 10:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course](
	[Cno] [char](10) NOT NULL,
	[Cname] [char](30) NOT NULL,
	[Ccredit] [tinyint] IDENTITY(1,1) NOT NULL,
	[XKLB] [char](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON
INSERT [dbo].[Course] ([Cno], [Cname], [Ccredit],[XKLB]) VALUES ('B001','����ϵͳ',4,'����')
INSERT [dbo].[Course] ([Cno], [Cname], [Ccredit],[XKLB]) VALUES ('B002','��������ԭ��',2,'����')
INSERT [dbo].[Course] ([Cno], [Cname], [Ccredit],[XKLB]) VALUES ('B003','�̶����˼��',3,'����')
INSERT [dbo].[Course] ([Cno], [Cname], [Ccredit],[XKLB]) VALUES ('B004','��ҵ�Ļ�',3,'����')
INSERT [dbo].[Course] ([Cno], [Cname], [Ccredit],[XKLB]) VALUES ('B005','���ѧ',3,'����')
INSERT [dbo].[Course] ([Cno], [Cname], [Ccredit],[XKLB]) VALUES ('B006','�ߵ���ѧ',2,'����')
INSERT [dbo].[Course] ([Cno], [Cname], [Ccredit],[XKLB]) VALUES ('B007','���Դ���',3,'����')
INSERT [dbo].[Course] ([Cno], [Cname], [Ccredit],[XKLB]) VALUES ('B008','��ѧӢ��',4,'����')
INSERT [dbo].[Course] ([Cno], [Cname], [Ccredit],[XKLB]) VALUES ('B009','���˼������ѧ',4,'����')
INSERT [dbo].[Course] ([Cno], [Cname], [Ccredit],[XKLB]) VALUES ('X001','��ѧ����ҵָ��',1,'ѡ��')
INSERT [dbo].[Course] ([Cno], [Cname], [Ccredit],[XKLB]) VALUES ('X002','��ѧ������ָ��',1,'ѡ��')
INSERT [dbo].[Course] ([Cno], [Cname], [Ccredit],[XKLB]) VALUES ('X003','��ѧ��˼������',1,'ѡ��')
SET IDENTITY_INSERT [dbo].[Course] OFF

/****** Object:  Table [dbo].[SC]    Script Date: 2017/11/7 10:46:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SC](
	[Sno] [char](10) NOT NULL,
	[Tno] [char](10) NOT NULL,
	[Cno] [char](10) NOT NULL,
	[Grade] [numeric](3, 0) IDENTITY(1,1) NOT NULL,
 CONSTRAINT [Course_uk] UNIQUE NONCLUSTERED 
(
	[Sno] ASC,
	[Tno] ASC,
	[Cno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SC] ON
INSERT [dbo].[SC] ([Sno],[Tno],[Cno],[Grade]) VALUES ('G2016001','2006001','B004',80)
INSERT [dbo].[SC] ([Sno],[Tno],[Cno],[Grade]) VALUES ('G2016001','2008001','B008',88)
INSERT [dbo].[SC] ([Sno],[Tno],[Cno],[Grade]) VALUES ('J2016001','2003001','B001',90)
INSERT [dbo].[SC] ([Sno],[Tno],[Cno],[Grade]) VALUES ('J2016003','2002001','B001',85)
INSERT [dbo].[SC] ([Sno],[Tno],[Cno],[Grade]) VALUES ('J2016005','2011001','B003',87)
INSERT [dbo].[SC] ([Sno],[Tno],[Cno],[Grade]) VALUES ('J2016001','2011001','B002',91)
INSERT [dbo].[SC] ([Sno],[Tno],[Cno],[Grade]) VALUES ('J2016004','2003002','B008',50)
INSERT [dbo].[SC] ([Sno],[Tno],[Cno],[Grade]) VALUES ('J2016004','2011001','B002',85)
INSERT [dbo].[SC] ([Sno],[Tno],[Cno],[Grade]) VALUES ('G2016003','2006002','B005',86)
INSERT [dbo].[SC] ([Sno],[Tno],[Cno],[Grade]) VALUES ('G2016003','2008002','X001',91)
INSERT [dbo].[SC] ([Sno],[Tno],[Cno],[Grade]) VALUES ('L2016001','2009001','B007',80)
INSERT [dbo].[SC] ([Sno],[Tno],[Cno],[Grade]) VALUES ('L2016002','2009001','B007',92)
INSERT [dbo].[SC] ([Sno],[Tno],[Cno],[Grade]) VALUES ('L2016004','2009001','B007',83)
INSERT [dbo].[SC] ([Sno],[Tno],[Cno],[Grade]) VALUES ('L2016005','2010001','B006',78)
INSERT [dbo].[SC] ([Sno],[Tno],[Cno],[Grade]) VALUES ('L2016001','2010001','B006',48)
INSERT [dbo].[SC] ([Sno],[Tno],[Cno],[Grade]) VALUES ('L2016006','2003002','B008',86)
INSERT [dbo].[SC] ([Sno],[Tno],[Cno],[Grade]) VALUES ('S2016001','2012002','B008',85)
INSERT [dbo].[SC] ([Sno],[Tno],[Cno],[Grade]) VALUES ('S2016002','2012002','B008',79)
INSERT [dbo].[SC] ([Sno],[Tno],[Cno],[Grade]) VALUES ('S2016003','2012002','B008',80)
INSERT [dbo].[SC] ([Sno],[Tno],[Cno],[Grade]) VALUES ('S2016001','2013001','B006',90)
INSERT [dbo].[SC] ([Sno],[Tno],[Cno],[Grade]) VALUES ('S2016004','2013001','B006',86)
INSERT [dbo].[SC] ([Sno],[Tno],[Cno],[Grade]) VALUES ('S2016005','2014001','X003',92)
INSERT [dbo].[SC] ([Sno],[Tno],[Cno],[Grade]) VALUES ('S2016003','2014001','X003',88)
INSERT [dbo].[SC] ([Sno],[Tno],[Cno],[Grade]) VALUES ('G2016002','2008002','X002',84)
INSERT [dbo].[SC] ([Sno],[Tno],[Cno],[Grade]) VALUES ('G2016005','2008002','X003',87)
SET IDENTITY_INSERT [dbo].[SC] OFF


--ALTER TABLE [dbo].[SC]  WITH CHECK ADD  CONSTRAINT [Teacher_constraint] FOREIGN KEY([Tno])
--REFERENCES [dbo].[Teacher] ([Tno])
--GO
--ALTER TABLE [dbo].[SC] CHECK CONSTRAINT [Teacher_constraint]
--GO

ALTER TABLE [dbo].[SC]  WITH CHECK ADD  CONSTRAINT [Course_constraint] FOREIGN KEY([Cno])
REFERENCES [dbo].[Course] ([Cno])
GO
ALTER TABLE [dbo].[SC] CHECK CONSTRAINT [Course_constraint]
GO

ALTER TABLE [dbo].[SC]  WITH CHECK ADD  CONSTRAINT [Student_constraint] FOREIGN KEY([Sno])
REFERENCES [dbo].[Student] ([Sno])
GO
ALTER TABLE [dbo].[SC] CHECK CONSTRAINT [Student_constraint]
GO




ALTER TABLE [dbo].[SC]  WITH CHECK ADD  CONSTRAINT [CK__SC__Grade__3C69FB99] CHECK  (([Grade]>=(0) AND [Grade]<=(100)))
GO

ALTER TABLE [dbo].[SC] CHECK CONSTRAINT [CK__SC__Grade__3C69FB99]
GO


ALTER TABLE [dbo].[Course]  WITH CHECK ADD CHECK  (([Ccredit]>=(1) AND [Ccredit]<=(10)))
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD CHECK  (([XKLB]='ѡ��' OR [XKLB]='����'))
GO


ALTER TABLE [dbo].[Student]  WITH CHECK ADD CHECK  (([Sage]>=(1) AND [Sage]<=(80)))
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD CHECK  (([Ssex]='Ů' OR [Ssex]='��'))
GO


ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD CHECK  (([Tage]>=(1) AND [Tage]<=(80)))
GO

ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD CHECK  (([Tprot]='������' OR [Tprot]='����' OR [Tprot]='��ʦ'))
GO

ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD CHECK  (([Tsex]='Ů' OR [Tsex]='��'))
GO


Select  * from Student