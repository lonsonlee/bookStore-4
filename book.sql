USE [master]
GO
/****** Object:  Database [mldn]    Script Date: 2016/1/19 7:17:51 ******/
CREATE DATABASE [mldn]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'mldn', FILENAME = N'D:\Program Files (x86)\sqlserver\MSSQL11.MSSQLSERVER\MSSQL\DATA\mldn.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'mldn_log', FILENAME = N'D:\Program Files (x86)\sqlserver\MSSQL11.MSSQLSERVER\MSSQL\DATA\mldn_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [mldn] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [mldn].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [mldn] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [mldn] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [mldn] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [mldn] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [mldn] SET ARITHABORT OFF 
GO
ALTER DATABASE [mldn] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [mldn] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [mldn] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [mldn] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [mldn] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [mldn] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [mldn] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [mldn] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [mldn] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [mldn] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [mldn] SET  ENABLE_BROKER 
GO
ALTER DATABASE [mldn] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [mldn] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [mldn] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [mldn] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [mldn] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [mldn] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [mldn] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [mldn] SET RECOVERY FULL 
GO
ALTER DATABASE [mldn] SET  MULTI_USER 
GO
ALTER DATABASE [mldn] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [mldn] SET DB_CHAINING OFF 
GO
ALTER DATABASE [mldn] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [mldn] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [mldn]
GO
/****** Object:  Table [dbo].[addressinfo]    Script Date: 2016/1/19 7:17:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[addressinfo](
	[addno] [varchar](200) NOT NULL,
	[mid] [varchar](50) NULL,
	[addname] [varchar](50) NULL,
	[addr] [varchar](200) NULL,
	[phone] [varchar](10) NULL,
 CONSTRAINT [PK__addressi__CDFE94E96C697A29] PRIMARY KEY CLUSTERED 
(
	[addno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[book]    Script Date: 2016/1/19 7:17:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[book](
	[bookId] [varchar](200) NOT NULL,
	[book_type] [varchar](50) NOT NULL,
	[bookName] [varchar](200) NOT NULL,
	[bookImg] [varchar](100) NOT NULL,
	[author] [varchar](200) NOT NULL,
	[publishing] [varchar](200) NOT NULL,
	[introduct] [varchar](max) NULL,
	[price] [numeric](6, 2) NULL,
	[new_price] [numeric](6, 2) NULL,
	[onsaleDate] [date] NULL,
	[catalog] [varchar](max) NULL,
	[num] [varchar](50) NULL,
 CONSTRAINT [PK__book__8BE5A10D024833C3] PRIMARY KEY CLUSTERED 
(
	[bookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[book_order]    Script Date: 2016/1/19 7:17:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[book_order](
	[orderno] [varchar](200) NOT NULL,
	[bookId] [varchar](200) NOT NULL,
	[addno] [varchar](200) NOT NULL,
	[mid] [varchar](50) NULL,
	[orderState] [varchar](200) NULL,
	[fee] [numeric](6, 2) NULL,
	[num] [numeric](18, 0) NULL,
	[time] [varchar](50) NULL,
 CONSTRAINT [PK__book_ord__080ECEAE3EBB5CA0] PRIMARY KEY CLUSTERED 
(
	[orderno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[book_type]    Script Date: 2016/1/19 7:17:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[book_type](
	[typeid] [varchar](50) NOT NULL,
	[typename] [varchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[typeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cart]    Script Date: 2016/1/19 7:17:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cart](
	[cartid] [varchar](100) NOT NULL,
	[bookId] [varchar](200) NOT NULL,
	[mid] [varchar](50) NULL,
	[counts] [varchar](100) NOT NULL,
	[fee] [numeric](6, 2) NULL,
 CONSTRAINT [PK__cart__41663FC0F32478A4] PRIMARY KEY CLUSTERED 
(
	[cartid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[emp]    Script Date: 2016/1/19 7:17:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[emp](
	[empno] [numeric](18, 0) NOT NULL,
	[ename] [varchar](10) NULL,
	[job] [varchar](9) NULL,
	[hiredate] [date] NULL,
	[sal] [numeric](7, 2) NULL,
	[comm] [numeric](7, 2) NULL,
 CONSTRAINT [PK__emp__AF4C318A59778336] PRIMARY KEY CLUSTERED 
(
	[empno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[member]    Script Date: 2016/1/19 7:17:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[member](
	[mid] [varchar](50) NOT NULL,
	[password] [varchar](32) NOT NULL,
	[email] [varchar](200) NOT NULL,
	[lastdate] [date] NULL,
	[paypassword] [varchar](32) NULL,
	[money] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[mid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[addressinfo] ([addno], [mid], [addname], [addr], [phone]) VALUES (N'20160103073353370admin', N'admin', N'陈少玲', N'广工龙洞校区', N'1882627481')
INSERT [dbo].[addressinfo] ([addno], [mid], [addname], [addr], [phone]) VALUES (N'20160103073836390admin', N'admin', N'admin', N'广东', N'1234567890')
INSERT [dbo].[addressinfo] ([addno], [mid], [addname], [addr], [phone]) VALUES (N'20160103102239371admin', N'admin', N'ded', N'de', N'111')
INSERT [dbo].[addressinfo] ([addno], [mid], [addname], [addr], [phone]) VALUES (N'20160118072932583guest', N'guest', N'guest', N'zhanjiang', N'123456789')
INSERT [dbo].[book] ([bookId], [book_type], [bookName], [bookImg], [author], [publishing], [introduct], [price], [new_price], [onsaleDate], [catalog], [num]) VALUES (N'20160117033854963', N'06', N'龙族4 奥丁之渊', N'"../img/00000000000000000000000120160117153854621572.jpg"', N'江南', N'长江出版社', N'《龙族IV奥丁之渊》：路明非成为了卡塞尔学院的新任学生会主席，偶然中路明非发现，楚子航消失了，除了他，其他人都不记得有这个人曾经存在，并怀疑他在任务中脑震荡。路明非在痛苦中挣扎，找到远在小岛上上新娘课程的诺诺。他并不知道在他离开学院的当天，学院遭受袭击，蒙受重大损失，而他是嫌疑人。这一切充满了诡异，而芬格尔从古巴千里迢迢赶来助阵，由此路明非和芬格尔、诺诺决定回到了楚子航的故乡北京，寻找楚子航曾经留下的痕迹。却在无意中与诺诺闯入楚子航当年遇过的尼伯龙根。奥丁再次出现，长枪直指诺诺。路明非为了救诺诺，求助路明泽……', CAST(32.00 AS Numeric(6, 2)), CAST(16.00 AS Numeric(6, 2)), CAST(0xEB3A0B00 AS Date), N'www', N'100')
INSERT [dbo].[book] ([bookId], [book_type], [bookName], [bookImg], [author], [publishing], [introduct], [price], [new_price], [onsaleDate], [catalog], [num]) VALUES (N'20160117034037151', N'01', N'睡前胎教故事', N'"../img/00000000000000000000000120160117154037101233.jpg"', N'汉竹', N'江苏科学技术出版社', N'睡前一个小故事，给宝宝一个甜甜的梦', CAST(35.00 AS Numeric(6, 2)), CAST(14.00 AS Numeric(6, 2)), CAST(0xEB3A0B00 AS Date), N'www', N'100')
INSERT [dbo].[book] ([bookId], [book_type], [bookName], [bookImg], [author], [publishing], [introduct], [price], [new_price], [onsaleDate], [catalog], [num]) VALUES (N'20160117034718483', N'01', N'彼得兔和他的朋友们', N'"../img/00000000000000000000000120160117160735650755.jpg"', N'Potter,B.', N'安徽少年儿童出版社', N' 套装8本
100多年前，一辈子生活在庄园里的波特小姐为了安慰一个生病的小孩儿，编了一个小故事，并写在信里寄给他，这就是日后大名鼎鼎的《彼得兔和他的朋友们（套装共8册）》。今天全世界的人都知道毕翠克丝·波特的名字和她创造的小动物：彼得兔、兔子本杰明、格拉斯特市的小老鼠、松鼠提米脚尖儿、平小猪、杰米玛鸭子。书中所有的动物、植物都真实生动，有人一样的喜怒哀乐，一样的大智慧和小算计，一样的好心肠……在英语国家，几乎每一个孩子的童年都有关于彼得兔或者汤姆小猫的记忆。彼得兔和他的朋友们的故事成为影响孩子一生的名著佳作。', CAST(80.00 AS Numeric(6, 2)), CAST(48.00 AS Numeric(6, 2)), CAST(0xEB3A0B00 AS Date), N'www', N'100')
INSERT [dbo].[book] ([bookId], [book_type], [bookName], [bookImg], [author], [publishing], [introduct], [price], [new_price], [onsaleDate], [catalog], [num]) VALUES (N'20160117034937633', N'06', N'老炮儿', N'"../img/00000000000000000000000120160117154937625853.jpg"', N'管虎', N'长江文艺出版社', N'内容推荐
曾经风光四九城的老炮六爷，难以适应社会巨变，蛰伏于胡同深处，过着溜鸟、管闲事、
发牢骚的无聊日子。某日，六爷和“小炮儿”儿子晓波父子间产生巨大情感冲突，导致小炮儿负气离家出走，不想遭遇暗算，被新崛起一代的“小爷”小飞非法拘禁。为了解救儿子，并偿还当年对儿子的愧疚之情，六爷重出江湖。六爷用自己的规矩，试图摆平事件，却无奈的发现，无论是这个时代，还是自己的身体，早已今非昔比。一场父子恩仇、新旧势力的对决无法避免。', CAST(39.00 AS Numeric(6, 2)), CAST(26.00 AS Numeric(6, 2)), CAST(0xEB3A0B00 AS Date), N'www', N'100')
INSERT [dbo].[book] ([bookId], [book_type], [bookName], [bookImg], [author], [publishing], [introduct], [price], [new_price], [onsaleDate], [catalog], [num]) VALUES (N'20160117040644853', N'05', N'黑客攻防从入门到精通', N'"../img/00000000000000000000000120160117160644733250.jpg"', N'恒盛杰资讯', N'机械工业出版社', N'《学电脑从入门到精通：黑客攻防从入门到精通》全面且详细地介绍了黑客攻防的基础知识，主要包括黑客攻防前的准备工作、扫描与嗅探攻防、Windows系统漏洞攻防、密码攻防、病毒攻防、木马攻防等内容。虽然书中介绍了黑客入侵攻击目标计算机的一些相关操作，但是这不是本书的重点，本书的重点在于介绍如何采取有效的防范措施来防御黑客入侵攻击自己的计算机。
　　《学电脑从入门到精通：黑客攻防从入门到精通》按照由易到难、循序渐进的顺序安排知识点。本书图文并茂，讲解深浅适宜，叙述条理清楚，通过阅读本书，读者不仅能了解黑客入侵攻击的原理和使用工具，而且还能掌握防御入侵攻击的相关操作。本书配有多媒体教学光盘，光盘中提供了相关的视频教学演示。
　　《学电脑从入门到精通：黑客攻防从入门到精通》适用于计算机初学者，也适用于计算机维护人员、IT从业人员以及对黑客攻防与网络安全维护感兴趣的计算机中级用户，同时也可作为各种计算机培训班的辅导用书。', CAST(49.00 AS Numeric(6, 2)), CAST(33.00 AS Numeric(6, 2)), CAST(0xEB3A0B00 AS Date), N'www', N'100')
INSERT [dbo].[book] ([bookId], [book_type], [bookName], [bookImg], [author], [publishing], [introduct], [price], [new_price], [onsaleDate], [catalog], [num]) VALUES (N'20160117040933620', N'05', N'鸟哥的Linux私房菜', N'"../img/00000000000000000000000120160117160933514503.jpg"', N'鸟哥', N'人民邮电出版社', N'《鸟哥的Linux私房菜：基础学习篇》是最具知名度的Linux入门书《鸟哥的Linux私房菜基础学习篇》的最新版，全面而详细地介绍了Linux操作系统。全书分为5个部分：第一部分着重说明Linux的起源及功能，如何规划和安装Linux主机；第二部分介绍Linux的文件系统、文件、目录与磁盘的管理；第三部分介绍文字模式接口shell和管理系统的好帮手shell脚本，另外还介绍了文字编辑器vi和vim的使用方法；第四部分介绍了对于系统安全非常重要的Linux账号的管理，以及主机系统与程序的管理，如查看进程、任务分配和作业管理；第五部分介绍了系统管理员(root)的管理事项，如了解系统运行状况、系统服务，针对登录文件进行解析，对系统进行备份以及核心的管理等。
本书内容丰富全面，基本概念的讲解非常细致，深入浅出。各种功能和命令的介绍，都配以大量的实例操作和详尽的解析。本书是初学者学习Linux不可多得的一本入门好书。', CAST(88.00 AS Numeric(6, 2)), CAST(72.00 AS Numeric(6, 2)), CAST(0xEB3A0B00 AS Date), N'www', N'100')
INSERT [dbo].[book] ([bookId], [book_type], [bookName], [bookImg], [author], [publishing], [introduct], [price], [new_price], [onsaleDate], [catalog], [num]) VALUES (N'20160117041455157', N'05', N'Android系统源代码情景分析', N'"../img/00000000000000000000000120160117161455062025.jpg"', N'罗升阳', N'电子工业出版社', N'在内容上，《Android系统源代码情景分析（含CD光盘1张）》结合使用情景，全面、深入、细致地分析了Android系统的源代码，涉及到Linux内核层、硬件抽象层（HAL）、运行时库层（Runtime）、应用程序框架层（ApplicationFramework）以及应用程序层（Application）。
在组织上，《Android系统源代码情景分析（含CD光盘1张）》将上述内容划分为初识Android系统、Android专用驱动系统和Android应用程序框架三大篇。初识Android系统篇介绍了参考书籍、基础知识以及实验环境搭建；Android专用驱动系统篇介绍了Logger日志驱动程序、Binder进程间通信驱动程序以及Ashmem匿名共享内存驱动程序；Android应用程序框架篇从组件、进程、消息以及安装四个维度对Android应用程序的框架进行了深入的剖析。
通过上述内容及其组织，本书能使读者既能从整体上把握Android系统的层次结构，又能从细节上掌握每一个层次的要点。', CAST(109.00 AS Numeric(6, 2)), CAST(92.00 AS Numeric(6, 2)), CAST(0xEB3A0B00 AS Date), N'www', N'100')
INSERT [dbo].[book] ([bookId], [book_type], [bookName], [bookImg], [author], [publishing], [introduct], [price], [new_price], [onsaleDate], [catalog], [num]) VALUES (N'20160117041603447', N'05', N'硬件技术工程师标准培训教程', N'"../img/00000000000000000000000120160117161603440802.jpg"', N'北京动力时代资讯有限公司', N'机械工业出版社', N'本套教材是信息产业部网络课程“国家信息化技术培训教程——硬件工程师”的配套教材，共分三册：硬件技术工程师教程、硬件维护工程师培训教程。本书为第一册。 本册系统全面地介绍了微型计算机硬件基础知识和PC组装技术，主要内容包括：PC主机内部各种配件的常见类型、基本结构、工作原理、技术参数和产品介绍；PC各种外设的常见类型、基本结构、工作原理、技术参数和产品介绍；便携式计算机和数码产品的常见类型，工作原理、技术参数和产品介绍；PC网络的常见设备类型、拓扑结构、网络协议、OSI参考模型、产品介绍及互联网的接入技术；PC的配件选购、组装、调试及系统安装等。', CAST(29.00 AS Numeric(6, 2)), CAST(17.00 AS Numeric(6, 2)), CAST(0xEB3A0B00 AS Date), N'www', N'100')
INSERT [dbo].[book] ([bookId], [book_type], [bookName], [bookImg], [author], [publishing], [introduct], [price], [new_price], [onsaleDate], [catalog], [num]) VALUES (N'20160117042021422', N'01', N'灵活的混音', N'"../img/00000000000000000000000120160117162150735187.jpg"', N'[美]AlexanderU.Case著| 雷伟译', N'人民邮电出版社', N'你准备好混音了吗？当你完成了一首歌曲的录音工作，而且录得不错时，你实际上只完成了音乐制作的一半工作。混音才是音乐制作当中真正产生奇迹的环节，获得完美的混音永远是音乐制作当中的终极挑战。作为整个录音工作中最难以捉摸的环节，混音可能需要你用一生的时间来把握，而《灵活的混音——针对多轨混音的专业音频技巧》能令你的混音技巧突飞猛进，快速提高你的混音能力。　　《灵活的混音——针对多轨混音的专业音频技巧》将让你清晰地认识所有的混音效果——均衡、失真、压缩、扩展、移调、延时、混响，还有更多的其他效果，并把它们应用到流行音乐当中一些最重要的乐器上去。你将获得专业的知识和技巧，从而通过多轨混音的实践来展现你对音乐的理解，并将真正掌控专业级的混音。
《灵活的混音——针对多轨混音的专业音频技巧》作者AlexanderU．Case的职业生涯专注于进行音乐录音的创造和审美工作，为此他不断地学习美学、信号处理、电声学、室内声学等知识，并增强自身的领悟力。作为马萨诸塞洛厄尔大学(Universityof MassachusettsLowell)的副教授，Case负责录音工程专业学生和研究生们的日常教学、会议组织和科研活动。同时，作为音频工程师协会(AudioEngineering Society)以及美国声学学会(Acoustical Society ofAmerica)的会员，Case还经常以工程师、教育家和作家的身份发表公开演讲或者广播演讲，其活动地点遍布美国和全世界。Case教授获得过机械工程、音乐和声学领域的学位，他正在艺术和技术结合领域孜孜不断地进行着探索。
录音棚就是你的乐器，现在就是你应该学习如何演奏它的时候了。AlexanderU. Case将告诉你的不仅是如何进行好的混音，而是如何进行灵活的混音！', CAST(98.00 AS Numeric(6, 2)), CAST(88.00 AS Numeric(6, 2)), CAST(0xEB3A0B00 AS Date), N'www', N'100')
INSERT [dbo].[book] ([bookId], [book_type], [bookName], [bookImg], [author], [publishing], [introduct], [price], [new_price], [onsaleDate], [catalog], [num]) VALUES (N'20160117042123627', N'05', N'艺术史的语言', N'"../img/00000000000000000000000120160117162123619119.jpg"', N'柯马尔，等', N'江苏美术出版社', N'《艺术史的语言》涉及到当代艺术史学研究的前沿理论问题，理论思维高度抽象，新的术语连篇累牍，各篇文章的思路很有九曲回肠之势。它的论述背后是西方当代学术话语的转型建构，将形象的视觉转换为抽象的形而上探讨是西方追求理性逻辑的一种体现。', CAST(32.00 AS Numeric(6, 2)), CAST(28.00 AS Numeric(6, 2)), CAST(0xEB3A0B00 AS Date), N'www', N'100')
INSERT [dbo].[book] ([bookId], [book_type], [bookName], [bookImg], [author], [publishing], [introduct], [price], [new_price], [onsaleDate], [catalog], [num]) VALUES (N'20160117042505450', N'01', N'当代设计的前世今生', N'../img/00000000000000000000000120160117162505441864.jpg', N'[法]伊丽莎白·库蒂里耶（ElisabethCouturier）著| 周志译', N'中信出版社', N'《当代设计的前世今生》试图揭示当代设计的神秘面纱，大量的访问和惊人的图片让读者震惊，是一本实用的设计欣赏指南类书籍，包括从ipod到简陋的剃须刀当代设计的方方面面。本书将看似错综复杂的当代设计分为可读性很强的九个章节，涵盖了影响并确定如今设计潮流的风格、产品和人物。作者在本书每章节的标题中设置了关键词，可以帮助读者更好地理解和欣赏当代设计。
《当代设计的前世今生》从“什么是设计”开始讲起，讲述了从十九世纪二十年代开始每个十年间的设计潮流，介绍了三十位有影响力的设计师和他们的创新设计，讲解了不同设计风格，让读者可以留意到设计风格之间的相似性，包括一些设计相关用语。本书提供了最基本的信息，以便读者可以更好的理解当代设计。以一种参与性与高可读性的纪实风格，作者详细分析了设计是如何贯穿于我们周围的生活并提高我们的生活质量，例如从还在成长中的Campbell汤和麦当劳的品牌和标志，到日常生活中更加微妙的设计对象，如特百惠、比克笔以及桌椅等。大量的彩色照片能够捕捉到设计的魅力、大胆和幽默，并使本书能够指导设计。', CAST(68.00 AS Numeric(6, 2)), CAST(60.00 AS Numeric(6, 2)), CAST(0xEC3A0B00 AS Date), N'www', N'100')
INSERT [dbo].[book] ([bookId], [book_type], [bookName], [bookImg], [author], [publishing], [introduct], [price], [new_price], [onsaleDate], [catalog], [num]) VALUES (N'20160117103316888', N'03', N'顾亭林诗集汇注(精)', N'"../img/00000000000000000000000120160117223316881504.jpg"', N'[清]顾炎武', N'上海古籍出版社', N'顾亭林诗集汇注(精)(全2册)', CAST(98.00 AS Numeric(6, 2)), CAST(87.00 AS Numeric(6, 2)), CAST(0xEB3A0B00 AS Date), N'www', N'100')
INSERT [dbo].[book] ([bookId], [book_type], [bookName], [bookImg], [author], [publishing], [introduct], [price], [new_price], [onsaleDate], [catalog], [num]) VALUES (N'20160117103446101', N'01', N'青少年课外阅读经典·徐志摩诗集', N'../img/00000000000000000000000120160117223446051104.jpg', N'徐志摩著| 谭龙曼编', N'黄山书社', N'青少年课外阅读经典·徐志摩诗集', CAST(20.00 AS Numeric(6, 2)), CAST(14.00 AS Numeric(6, 2)), CAST(0xEC3A0B00 AS Date), N'www', N'100')
INSERT [dbo].[book] ([bookId], [book_type], [bookName], [bookImg], [author], [publishing], [introduct], [price], [new_price], [onsaleDate], [catalog], [num]) VALUES (N'20160117103612197', N'03', N'第八届中国科技期刊发展论坛论文集', N'"../img/00000000000000000000000120160117223612133253.jpg"', N'第八届中国科技期刊发展论坛执委会', N'华中科技大学出版社', N'《第八届中国科技期刊发展论坛论文集》收录了全国多位科技期刊编辑、科技工作者和管理人员提交的论文．内容以“竞争合作创新--科技期刊未来发展之路”为主题，涉及“文化体制改革与我国科技期刊发展战略研究”科技期刊评价体系与精品化及国际化建设“”出版新技术及科技期刊出版业集约化、市场化发展研究“新时期高校科技期刊发展与转型”“网络与数字环境下期刊编辑角色的重新定位”和“新时期科技期刊与科技期刊出版方面的热点与难点问题”等六个专题的学术问题研究，既汇集了科技期刊编辑、出版和发行等环节的理论思考与实践探索，又探讨了科技期刊在新形势下如何向精品化、国际化、网络化、数字化、集约化、市场化发展的问题，《第八届中国科技期刊发展论坛论文集》内容详实，观点鲜明，具有较高的学术价值，可供广大科技期刊编辑、科技工作者和管理人员参考。', CAST(128.00 AS Numeric(6, 2)), CAST(118.00 AS Numeric(6, 2)), CAST(0xEB3A0B00 AS Date), N'www', N'100')
INSERT [dbo].[book] ([bookId], [book_type], [bookName], [bookImg], [author], [publishing], [introduct], [price], [new_price], [onsaleDate], [catalog], [num]) VALUES (N'20160117103750486', N'02', N'韩英汉经济贸易辞典', N'"../img/00000000000000000000000120160117223750478996.jpg"', N'刘沛霖', N'辽宁民族出版社', N'《韩英汉经济贸易辞典》收词40000余条，内容涉及经济理论、贸易投资、金融证券、财务会计、企业管理等；还收录了一些来自报刊杂志和最新经贸著述的词汇。', CAST(128.00 AS Numeric(6, 2)), CAST(112.00 AS Numeric(6, 2)), CAST(0xEB3A0B00 AS Date), N'www', N'100')
INSERT [dbo].[book] ([bookId], [book_type], [bookName], [bookImg], [author], [publishing], [introduct], [price], [new_price], [onsaleDate], [catalog], [num]) VALUES (N'20160117103907397', N'02', N'成语名句对联鉴赏辞典(精编本)', N'"../img/00000000000000000000000120160117223907388919.jpg"', N'    ', N'华语教学出版社', N'汉语成语和历代“名句”是中华民族文化中的精粹，是各个时代思想和精神的凝聚与升华。成语最具久远的文化渊源，浓缩了中华民族博大精深的文化智慧，蕴藏着深厚的文化底蕴。本书选用成语二千余条，选用名句（包括格言、诗词、名联等）一千余条（每条上下两句），两相对接，集句（词）成联，组成一千余条新的“对子”。这一“两栖”辞典，给目前“人丁兴旺”的成语词典、名句辞典、名联辞典大家庭增添了一名新成员，别树一帜，面目全新。', CAST(32.00 AS Numeric(6, 2)), CAST(28.00 AS Numeric(6, 2)), CAST(0xEB3A0B00 AS Date), N'www', N'100')
INSERT [dbo].[book] ([bookId], [book_type], [bookName], [bookImg], [author], [publishing], [introduct], [price], [new_price], [onsaleDate], [catalog], [num]) VALUES (N'20160117104023069', N'01', N'古诗鉴赏辞典(豪华精装本)(全3册)', N'../img/00000000000000000000000120160117224023058444.jpg', N'贺新辉编', N'中国妇女出版社', N'本书共收入唐代近体诗以前，即包括从《诗经》、楚辞，到汉、魏、晋、南北朝、隋，各代共233位诗人、无名氏的诗作及民歌作品1072篇。', CAST(450.00 AS Numeric(6, 2)), CAST(400.00 AS Numeric(6, 2)), CAST(0xEC3A0B00 AS Date), N'www', N'100')
INSERT [dbo].[book] ([bookId], [book_type], [bookName], [bookImg], [author], [publishing], [introduct], [price], [new_price], [onsaleDate], [catalog], [num]) VALUES (N'20160117104147379', N'04', N'海底两万里', N'"../img/00000000000000000000000120160117224147291334.jpg"', N'[法]儒勒·凡尔纳著| 书香童年译', N'江苏少年儿童出版社期刊中心', N'本系列为品牌名著读物“我爱阅读小学生经典文库”（彩绘注音版）第一辑，本辑共6册，是一套非常适合低年龄段小学生阅读的书籍。
　　本系列图书富含童趣和想象力，让小读者感受到一个美好和奇妙的精神世界。全部都是意境优美的经典传世之作，配以精美的插画，让阅读更加充满趣味。', CAST(18.00 AS Numeric(6, 2)), CAST(12.00 AS Numeric(6, 2)), CAST(0xEB3A0B00 AS Date), N'www', N'100')
INSERT [dbo].[book] ([bookId], [book_type], [bookName], [bookImg], [author], [publishing], [introduct], [price], [new_price], [onsaleDate], [catalog], [num]) VALUES (N'20160117104311855', N'01', N'销售与市场', N'../img/00000000000000000000000120160117224311849189.jpg', N'销售与市场', N'《销售与市场》杂志社', N'《销售与市场》杂志创刊于1994年，是中国内地第一家大型**专业期刊。秉承“专业性、实战性、权威性、国际性”的办刊理念，及“反映中国**主流，引领中国**潮流，见证并推动中国**进步”的办刊宗旨，创刊以来，以全球化视野，关注中国市场发展趋势，致力为中国企业指引方向，提供最先进的**理念与实务方法工具，不断提炼实战案例，坚持执着专业研究，成为中国内地财经领域**媒体的一面旗帜，被业内誉为“中国**第一刊”。《销售与市场》三个主刊分别为：管理版，评论版，渠道版。月发行70万册左右（BPA数据）。在国内所有商业、经济类期刊中稳居前列。平均传阅率为5.22人/册。拥有大专、大学以上学历的读者占75.65%。占有大多数的企业读者，覆盖**高层、销售部与市场部各级主管及一线员工，经济决策力与影响力巨大。《销售与市场?管理版》以战略**理论为指导思想，以**趋势为洞察视角，以消费者行为为关注重点，以**模式为研究核心，密切关注当今市场**及商业前沿的最新理论、实践和发展方向，坚持研究问题根植市场、解决方法立足实战，办中国最具市场活力和**思想的专业期刊。期刊定位：大型战略**管理期刊。编辑理念：引领**潮流，探究模式之道。《销售与市场?渠道版》立足于渠道，以渠道为中心思考**问题，探讨制造商、经销商、零售商的渠道实战和未来变革，深入剖析各类渠道焦点，全景展示企业渠道运作个案，经销商的商业模式，零售商的最新动向，透视渠道本质，探寻渠道发展规律，是中国唯一一本专注于渠道研究的期刊。期刊定位：中国渠道第一刊。编辑理念：运用之妙，存乎一心。商业规律千篇一律，商业操盘智者见智。《销售与市场?评论版》反映**主流，引领科学**。以创新思维、专业导向为要旨，聚焦思潮与事件，通过对重大**热点事件和领导类品牌重要**举措的点评，以及主流人群的**话题评论，引领企业科学**，健康发展。期刊定位：大型**评论期刊。编辑理念：于思潮事件中洞察先机，于案例穿越中领悟道术。让行动者思考，让思考者行动。', CAST(360.00 AS Numeric(6, 2)), CAST(248.00 AS Numeric(6, 2)), CAST(0xEC3A0B00 AS Date), N'www', N'100')
INSERT [dbo].[book] ([bookId], [book_type], [bookName], [bookImg], [author], [publishing], [introduct], [price], [new_price], [onsaleDate], [catalog], [num]) VALUES (N'20160117104508032', N'01', N'繁星春水', N'../img/00000000000000000000000120160117224508024896.jpg', N'  ', N'江苏少年儿童出版社期刊中心', N'　《传世经典必读文库：繁星·春水（少年版全彩本）》被茅盾称为“繁星格”、“春水体”。这两部含蓄隽永、富于哲理的诗集的出版，拨动了诸多青年的久已沉默的心弦。在她的影响下，“五四”以来的新诗进入了一个小诗流行的时代。与此同时，冰心的诗在世界各地被译成了多种文字。在当代，这两本诗集被列入全日制义务教育语文课程标准推荐书目之中。同时，她的许多小诗被选入了中学教材，深受读者们的喜爱和吟诵。', CAST(18.00 AS Numeric(6, 2)), CAST(10.00 AS Numeric(6, 2)), CAST(0xEC3A0B00 AS Date), N'www', N'100')
INSERT [dbo].[book_order] ([orderno], [bookId], [addno], [mid], [orderState], [fee], [num], [time]) VALUES (N'20160117114636518admin', N'20160117104147379', N'20160103073353370admin', N'admin', N'已收货', CAST(12.00 AS Numeric(6, 2)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[book_order] ([orderno], [bookId], [addno], [mid], [orderState], [fee], [num], [time]) VALUES (N'20160117114727540admin', N'20160117104147379', N'20160103073353370admin', N'admin', N'已收货', CAST(12.00 AS Numeric(6, 2)), CAST(1 AS Numeric(18, 0)), NULL)
INSERT [dbo].[book_order] ([orderno], [bookId], [addno], [mid], [orderState], [fee], [num], [time]) VALUES (N'20160118010946867admin', N'20160117104147379', N'未填写', N'admin', N'未付款', CAST(12.00 AS Numeric(6, 2)), CAST(1 AS Numeric(18, 0)), N'2016-01-18-01-09-46-867')
INSERT [dbo].[book_order] ([orderno], [bookId], [addno], [mid], [orderState], [fee], [num], [time]) VALUES (N'20160118013012195admin', N'20160117104023069', N'20160103073353370admin', N'admin', N'已发货', CAST(400.00 AS Numeric(6, 2)), CAST(1 AS Numeric(18, 0)), N'2016-01-18-01:30:12:195')
INSERT [dbo].[book_order] ([orderno], [bookId], [addno], [mid], [orderState], [fee], [num], [time]) VALUES (N'20160118015911939admin', N'20160117104147379', N'20160103073353370admin', N'admin', N'已发货', CAST(12.00 AS Numeric(6, 2)), CAST(1 AS Numeric(18, 0)), N'2016-01-18-01:59:11:939')
INSERT [dbo].[book_order] ([orderno], [bookId], [addno], [mid], [orderState], [fee], [num], [time]) VALUES (N'20160118020555254admin', N'20160117104147379', N'20160103073353370admin', N'admin', N'已发货', CAST(12.00 AS Numeric(6, 2)), CAST(1 AS Numeric(18, 0)), N'2016-01-18-02:05:55:255')
INSERT [dbo].[book_order] ([orderno], [bookId], [addno], [mid], [orderState], [fee], [num], [time]) VALUES (N'20160118020606777admin', N'20160117103907397', N'20160103073353370admin', N'admin', N'已发货', CAST(28.00 AS Numeric(6, 2)), CAST(1 AS Numeric(18, 0)), N'2016-01-18-02:06:06:777')
INSERT [dbo].[book_order] ([orderno], [bookId], [addno], [mid], [orderState], [fee], [num], [time]) VALUES (N'20160118020617318admin', N'20160117103612197', N'20160103073353370admin', N'admin', N'已发货', CAST(118.00 AS Numeric(6, 2)), CAST(1 AS Numeric(18, 0)), N'2016-01-18-02:06:17:318')
INSERT [dbo].[book_order] ([orderno], [bookId], [addno], [mid], [orderState], [fee], [num], [time]) VALUES (N'20160118021005861admin', N'20160117103316888', N'20160103073353370admin', N'admin', N'已发货', CAST(87.00 AS Numeric(6, 2)), CAST(1 AS Numeric(18, 0)), N'2016-01-18-02:10:05:862')
INSERT [dbo].[book_order] ([orderno], [bookId], [addno], [mid], [orderState], [fee], [num], [time]) VALUES (N'20160118021101972admin', N'20160117042505450', N'20160103073353370admin', N'admin', N'已发货', CAST(60.00 AS Numeric(6, 2)), CAST(1 AS Numeric(18, 0)), N'2016-01-18-02:11:01:972')
INSERT [dbo].[book_order] ([orderno], [bookId], [addno], [mid], [orderState], [fee], [num], [time]) VALUES (N'20160118021112612admin', N'20160117103612197', N'20160103073353370admin', N'admin', N'已发货', CAST(118.00 AS Numeric(6, 2)), CAST(1 AS Numeric(18, 0)), N'2016-01-18-02:11:12:612')
INSERT [dbo].[book_order] ([orderno], [bookId], [addno], [mid], [orderState], [fee], [num], [time]) VALUES (N'20160118023922036admin', N'20160117104147379', N'未填写', N'admin', N'未付款', CAST(12.00 AS Numeric(6, 2)), CAST(1 AS Numeric(18, 0)), N'2016-01-18-02:39:22:037')
INSERT [dbo].[book_order] ([orderno], [bookId], [addno], [mid], [orderState], [fee], [num], [time]) VALUES (N'20160118072813376admin', N'20160117104147379', N'未填写', N'admin', N'未付款', CAST(12.00 AS Numeric(6, 2)), CAST(3 AS Numeric(18, 0)), N'2016-01-18-07:28:13:391')
INSERT [dbo].[book_order] ([orderno], [bookId], [addno], [mid], [orderState], [fee], [num], [time]) VALUES (N'20160118072907488guest', N'20160117103316888', N'未填写', N'guest', N'未付款', CAST(87.00 AS Numeric(6, 2)), CAST(2 AS Numeric(18, 0)), N'2016-01-18-07:29:07:488')
INSERT [dbo].[book_order] ([orderno], [bookId], [addno], [mid], [orderState], [fee], [num], [time]) VALUES (N'20160118072932817null', N'20160117103316888', N'20160118072932583guest ', NULL, N'未付款', CAST(87.00 AS Numeric(6, 2)), CAST(2 AS Numeric(18, 0)), N'2016-01-18-07:29:32:817')
INSERT [dbo].[book_order] ([orderno], [bookId], [addno], [mid], [orderState], [fee], [num], [time]) VALUES (N'20160118075329082guest', N'20160117104147379', N'20160118072932583guest ', N'guest', N'未付款', CAST(12.00 AS Numeric(6, 2)), CAST(3 AS Numeric(18, 0)), N'2016-01-18-07:53:29:082')
INSERT [dbo].[book_order] ([orderno], [bookId], [addno], [mid], [orderState], [fee], [num], [time]) VALUES (N'20160118083704348guest', N'20160117104147379', N'未填写', N'guest', N'未付款', CAST(12.00 AS Numeric(6, 2)), CAST(3 AS Numeric(18, 0)), N'2016-01-18-08:37:04:348')
INSERT [dbo].[book_order] ([orderno], [bookId], [addno], [mid], [orderState], [fee], [num], [time]) VALUES (N'20160118083705567guest', N'20160117104147379', N'20160118072932583guest ', N'guest', N'未付款', CAST(12.00 AS Numeric(6, 2)), CAST(3 AS Numeric(18, 0)), N'2016-01-18-08:37:05:567')
INSERT [dbo].[book_order] ([orderno], [bookId], [addno], [mid], [orderState], [fee], [num], [time]) VALUES (N'20160118085414797admin', N'20160117103612197', N'20160103073353370admin ', N'admin', N'未付款', CAST(118.00 AS Numeric(6, 2)), CAST(1 AS Numeric(18, 0)), N'2016-01-18-08:54:14:797')
INSERT [dbo].[book_order] ([orderno], [bookId], [addno], [mid], [orderState], [fee], [num], [time]) VALUES (N'20160118092109659admin', N'20160117104147379', N'未填写', N'admin', N'未付款', CAST(12.00 AS Numeric(6, 2)), CAST(1 AS Numeric(18, 0)), N'2016-01-18-09:21:09:659')
INSERT [dbo].[book_order] ([orderno], [bookId], [addno], [mid], [orderState], [fee], [num], [time]) VALUES (N'20160118123419375admin', N'20160117104508032', N'20160103073353370admin', N'admin', N'待发货', CAST(10.00 AS Numeric(6, 2)), CAST(1 AS Numeric(18, 0)), N'2016-01-18-12-34-19-375')
INSERT [dbo].[book_order] ([orderno], [bookId], [addno], [mid], [orderState], [fee], [num], [time]) VALUES (N'20160119024913038admin', N'20160117104311855', N'20160103073353370admin ', N'admin', N'未付款', CAST(248.00 AS Numeric(6, 2)), CAST(1 AS Numeric(18, 0)), N'2016-01-19-02:49:13:038')
INSERT [dbo].[book_order] ([orderno], [bookId], [addno], [mid], [orderState], [fee], [num], [time]) VALUES (N'20160119030057065admin', N'20160117104311855', N'20160103073353370admin ', N'admin', N'未付款', CAST(248.00 AS Numeric(6, 2)), CAST(1 AS Numeric(18, 0)), N'2016-01-19-03:00:57:065')
INSERT [dbo].[book_order] ([orderno], [bookId], [addno], [mid], [orderState], [fee], [num], [time]) VALUES (N'20160119030145787admin', N'20160117104311855', N'20160103073353370admin ', N'admin', N'未付款', CAST(248.00 AS Numeric(6, 2)), CAST(1 AS Numeric(18, 0)), N'2016-01-19-03:01:45:787')
INSERT [dbo].[book_type] ([typeid], [typename]) VALUES (N'01', N'丛书')
INSERT [dbo].[book_type] ([typeid], [typename]) VALUES (N'02', N'辞典')
INSERT [dbo].[book_type] ([typeid], [typename]) VALUES (N'03', N'诗集、论文集')
INSERT [dbo].[book_type] ([typeid], [typename]) VALUES (N'04', N'期刊')
INSERT [dbo].[book_type] ([typeid], [typename]) VALUES (N'05', N'艺术、编程')
INSERT [dbo].[book_type] ([typeid], [typename]) VALUES (N'06', N'小说')
INSERT [dbo].[cart] ([cartid], [bookId], [mid], [counts], [fee]) VALUES (N'20160118072904941guest', N'20160117103316888', N'guest', N'2', CAST(87.00 AS Numeric(6, 2)))
INSERT [dbo].[cart] ([cartid], [bookId], [mid], [counts], [fee]) VALUES (N'20160119024408533admin', N'20160117104311855', N'admin', N'1', CAST(248.00 AS Numeric(6, 2)))
INSERT [dbo].[emp] ([empno], [ename], [job], [hiredate], [sal], [comm]) VALUES (CAST(354 AS Numeric(18, 0)), N'243', N'计算', CAST(0xEC3A0B00 AS Date), CAST(123.00 AS Numeric(7, 2)), CAST(123.00 AS Numeric(7, 2)))
INSERT [dbo].[emp] ([empno], [ename], [job], [hiredate], [sal], [comm]) VALUES (CAST(999 AS Numeric(18, 0)), N'测试', N'经理', CAST(0xEC3A0B00 AS Date), CAST(122.00 AS Numeric(7, 2)), CAST(222.00 AS Numeric(7, 2)))
INSERT [dbo].[emp] ([empno], [ename], [job], [hiredate], [sal], [comm]) VALUES (CAST(3333 AS Numeric(18, 0)), N'cw', N'f4345t', CAST(0xEC3A0B00 AS Date), CAST(222.00 AS Numeric(7, 2)), CAST(22.00 AS Numeric(7, 2)))
INSERT [dbo].[emp] ([empno], [ename], [job], [hiredate], [sal], [comm]) VALUES (CAST(3334 AS Numeric(18, 0)), N'dmwi ', N'vrer', CAST(0x26240B00 AS Date), CAST(4444.00 AS Numeric(7, 2)), CAST(231.00 AS Numeric(7, 2)))
INSERT [dbo].[emp] ([empno], [ename], [job], [hiredate], [sal], [comm]) VALUES (CAST(7762 AS Numeric(18, 0)), N'刘明', N'销售', CAST(0x6D2B0B00 AS Date), CAST(1000.00 AS Numeric(7, 2)), CAST(3500.00 AS Numeric(7, 2)))
INSERT [dbo].[emp] ([empno], [ename], [job], [hiredate], [sal], [comm]) VALUES (CAST(7782 AS Numeric(18, 0)), N'杨军', N'分析员', CAST(0x352B0B00 AS Date), CAST(2500.00 AS Numeric(7, 2)), CAST(4000.00 AS Numeric(7, 2)))
INSERT [dbo].[emp] ([empno], [ename], [job], [hiredate], [sal], [comm]) VALUES (CAST(7839 AS Numeric(18, 0)), N'王月', N'经理', CAST(0x952D0B00 AS Date), CAST(2500.00 AS Numeric(7, 2)), CAST(4000.00 AS Numeric(7, 2)))
INSERT [dbo].[emp] ([empno], [ename], [job], [hiredate], [sal], [comm]) VALUES (CAST(8964 AS Numeric(18, 0)), N'李祺', N'分析员', CAST(0x60290B00 AS Date), CAST(3000.00 AS Numeric(7, 2)), CAST(5000.00 AS Numeric(7, 2)))
INSERT [dbo].[member] ([mid], [password], [email], [lastdate], [paypassword], [money]) VALUES (N'admin', N'admin', N'AA@qq.com', CAST(0xED3A0B00 AS Date), N'admin', 752)
INSERT [dbo].[member] ([mid], [password], [email], [lastdate], [paypassword], [money]) VALUES (N'csl', N'123', N'csl@qq.com', CAST(0xD43A0B00 AS Date), N'csl', 200)
INSERT [dbo].[member] ([mid], [password], [email], [lastdate], [paypassword], [money]) VALUES (N'guest', N'guest', N'123@qq.com', CAST(0xEC3A0B00 AS Date), N'guest', 26)
ALTER TABLE [dbo].[addressinfo]  WITH CHECK ADD  CONSTRAINT [FK__addressinfo__mid__656C112C] FOREIGN KEY([mid])
REFERENCES [dbo].[member] ([mid])
GO
ALTER TABLE [dbo].[addressinfo] CHECK CONSTRAINT [FK__addressinfo__mid__656C112C]
GO
ALTER TABLE [dbo].[book]  WITH CHECK ADD  CONSTRAINT [FK_book_book_type] FOREIGN KEY([book_type])
REFERENCES [dbo].[book_type] ([typeid])
GO
ALTER TABLE [dbo].[book] CHECK CONSTRAINT [FK_book_book_type]
GO
ALTER TABLE [dbo].[book_order]  WITH CHECK ADD  CONSTRAINT [FK_book_order_book] FOREIGN KEY([bookId])
REFERENCES [dbo].[book] ([bookId])
GO
ALTER TABLE [dbo].[book_order] CHECK CONSTRAINT [FK_book_order_book]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK__cart__bookId__4222D4EF] FOREIGN KEY([bookId])
REFERENCES [dbo].[book] ([bookId])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK__cart__bookId__4222D4EF]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK_cart_member] FOREIGN KEY([mid])
REFERENCES [dbo].[member] ([mid])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK_cart_member]
GO
USE [master]
GO
ALTER DATABASE [mldn] SET  READ_WRITE 
GO
