Use master
go

CREATE DATABASE SelectCourse     --创建数据库
ON PRIMARY
(
NAME='SelectCourse_data',            --主数据文件的逻辑名
FILENAME='D:\SelectCourse.mdf',  --主数据文件的物理名
SIZE=10MB,                        --初始大小
FILEGROWTH=10%                 --增长率
)
log ON
(
NAME='SelectCourse_log',
	FILENAME='D:\SelectCourse.ldf', --日志文件的逻辑名
	SIZE=1MB,                      --日志文件的物理名
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
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tdept],[Tage],[Tprot],[Tel],[EMAIL]) VALUES ('2003001','刘建中','男','计算机科学学院',48,'教授','15000000000','liujianzhong@163.com')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tdept],[Tage],[Tprot],[Tel],[EMAIL]) VALUES ('2003002','周福','男','计算机科学学院',45,'副教授','15200000000','zhoufu@163.com')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tdept],[Tage],[Tprot],[Tel],[EMAIL]) VALUES ('2006001','陈萍','女','管理学院',39,'讲师','15300000000','chenping@sina.com')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tdept],[Tage],[Tprot],[Tel],[EMAIL]) VALUES ('2006002','汪琴仙','女','管理学院',46,'副教授','15900000000','wqingxian@126.com')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tdept],[Tage],[Tprot],[Tel],[EMAIL]) VALUES ('2008001','李成','男','管理学院',35,'讲师','18100000000','lichen@sina.com')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tdept],[Tage],[Tprot],[Tel],[EMAIL]) VALUES ('2008002','张连山','男','管理学院',47,'教授','13100000000','zlianshan@126.com')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tdept],[Tage],[Tprot],[Tel],[EMAIL]) VALUES ('2009001','周庆','女','理学院',46,'副教授','13500000000','zhouqing@sina.com')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tdept],[Tage],[Tprot],[Tel],[EMAIL]) VALUES ('2010001','王敏','男','理学院',34,'讲师','18900000000','wangmin@163.com')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tdept],[Tage],[Tprot],[Tel],[EMAIL]) VALUES ('2011001','方雄','男','计算机科学学院',32,'讲师','13100000000','fangxiong@126.com')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tdept],[Tage],[Tprot],[Tel],[EMAIL]) VALUES ('2012001','陈培平','男','理学院',50,'教授','13900000000','cpeiping@sina.com')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tdept],[Tage],[Tprot],[Tel],[EMAIL]) VALUES ('2012002','祝波','男','石油工程学院',43,'副教授','13400000000','zhubo@163.com')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tdept],[Tage],[Tprot],[Tel],[EMAIL]) VALUES ('2013001','林学富','男','石油工程学院',36,'讲师','18200000000','lxuefu@126.com')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tdept],[Tage],[Tprot],[Tel],[EMAIL]) VALUES ('2014001','张爱芳','女','石油工程学院',46,'教授','13400000000','zaifang@sina.com')
INSERT [dbo].[Teacher] ([Tno], [Tname], [Tsex], [Tdept],[Tage],[Tprot],[Tel],[EMAIL]) VALUES ('2014002','唐正如','女','石油工程学院',48,'教授','13300000000','tzhengru@163.com')
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
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('G2016001','李素素','女','行政管理','管理学院',22,'15600000000','susu@sina.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('G2016002','朱萍','女','行政管理','管理学院',21,'15300000000','zhuping@163.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('G2016003','叶家裕','男','财务管理','管理学院',20,'15800000000','jiayu@126.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('G2016004','邓家如','女','财务管理','管理学院',20,'15600000000','jiaru@sina.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('G2016005','高晓','女','财务管理','管理学院',21,'15400000000','gaoxiao@163.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('J2016001','杨华','男','计算机应用','计算机科学学院',20,'15200000000','yanghua@163.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('J2016002','刘全珍','女','计算机应用','计算机科学学院',21,'15300000000','liuqunz@163.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('J2016003','王国','男','计算机科学','计算机科学学院',21,'15500000000','wangguo@163.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('J2016004','孙荣','男','计算机科学','计算机科学学院',21,'15400000000','sunrong@sina.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('J2016005','胡娟','女','信息安全','计算机科学学院',20,'15500000000','hujuan@126.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('L2016001','张茂桦','男','光电子学','理学院',20,'18100000000','zmaohua@126.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('L2016002','方杰','男','光电子学','理学院',21,'18200000000','fangjie@163.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('L2016003','刘可','女','基础数学','理学院',20,'18300000000','liuke@126.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('L2016004','黄一秋','男','基础数学','理学院',21,'18600000000','hyiqiu@sina.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('L2016005','唐治','男','理论力学','理学院',20,'18200000000','tangzhi@sina.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('L2016006','韩云','男','理论力学','理学院',20,'18300000000','hanyun@126.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('S2016001','徐川','男','石油工程','石油工程学院',20,'18000000000','xuchuan@126.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('S2016002','汤洪','男','石油工程','石油工程学院',21,'18100000000','tanghong@sina.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('S2016003','马秋婷','女','油气储运','石油工程学院',20,'18600000000','mqiuting@163.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('S2016004','周英','女','油气储运','石油工程学院',20,'18700000000','zhouying@sina.com')
INSERT [dbo].[Student] ([Sno], [Sname], [Ssex],[Smajor],[Sdept],[Sage],[Tel],[EMAIL]) VALUES ('S2016005','曹林','男','油气储运','石油工程学院',21,'13200000000','caolin@126.com')
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
INSERT [dbo].[Course] ([Cno], [Cname], [Ccredit],[XKLB]) VALUES ('B001','操作系统',4,'必修')
INSERT [dbo].[Course] ([Cno], [Cname], [Ccredit],[XKLB]) VALUES ('B002','计算机组成原理',2,'必修')
INSERT [dbo].[Course] ([Cno], [Cname], [Ccredit],[XKLB]) VALUES ('B003','程度设计思想',3,'必修')
INSERT [dbo].[Course] ([Cno], [Cname], [Ccredit],[XKLB]) VALUES ('B004','企业文化',3,'必修')
INSERT [dbo].[Course] ([Cno], [Cname], [Ccredit],[XKLB]) VALUES ('B005','会计学',3,'必修')
INSERT [dbo].[Course] ([Cno], [Cname], [Ccredit],[XKLB]) VALUES ('B006','高等数学',2,'必修')
INSERT [dbo].[Course] ([Cno], [Cname], [Ccredit],[XKLB]) VALUES ('B007','线性代数',3,'必修')
INSERT [dbo].[Course] ([Cno], [Cname], [Ccredit],[XKLB]) VALUES ('B008','大学英语',4,'必修')
INSERT [dbo].[Course] ([Cno], [Cname], [Ccredit],[XKLB]) VALUES ('B009','马克思主义哲学',4,'必修')
INSERT [dbo].[Course] ([Cno], [Cname], [Ccredit],[XKLB]) VALUES ('X001','大学生就业指导',1,'选修')
INSERT [dbo].[Course] ([Cno], [Cname], [Ccredit],[XKLB]) VALUES ('X002','大学生心理指导',1,'选修')
INSERT [dbo].[Course] ([Cno], [Cname], [Ccredit],[XKLB]) VALUES ('X003','大学生思想修养',1,'选修')
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
ALTER TABLE [dbo].[Course]  WITH CHECK ADD CHECK  (([XKLB]='选修' OR [XKLB]='必修'))
GO


ALTER TABLE [dbo].[Student]  WITH CHECK ADD CHECK  (([Sage]>=(1) AND [Sage]<=(80)))
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD CHECK  (([Ssex]='女' OR [Ssex]='男'))
GO


ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD CHECK  (([Tage]>=(1) AND [Tage]<=(80)))
GO

ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD CHECK  (([Tprot]='副教授' OR [Tprot]='教授' OR [Tprot]='讲师'))
GO

ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD CHECK  (([Tsex]='女' OR [Tsex]='男'))
GO


Select  * from Student