USE [master]
GO
/****** Object:  Database [quizsystem]    Script Date: 03/23/2019 16:28:48 ******/
CREATE DATABASE [quizsystem] ON  PRIMARY 
( NAME = N'quizsystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\quizsystem.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'quizsystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\quizsystem_1.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [quizsystem] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [quizsystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [quizsystem] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [quizsystem] SET ANSI_NULLS OFF
GO
ALTER DATABASE [quizsystem] SET ANSI_PADDING OFF
GO
ALTER DATABASE [quizsystem] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [quizsystem] SET ARITHABORT OFF
GO
ALTER DATABASE [quizsystem] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [quizsystem] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [quizsystem] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [quizsystem] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [quizsystem] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [quizsystem] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [quizsystem] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [quizsystem] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [quizsystem] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [quizsystem] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [quizsystem] SET  DISABLE_BROKER
GO
ALTER DATABASE [quizsystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [quizsystem] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [quizsystem] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [quizsystem] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [quizsystem] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [quizsystem] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [quizsystem] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [quizsystem] SET  READ_WRITE
GO
ALTER DATABASE [quizsystem] SET RECOVERY SIMPLE
GO
ALTER DATABASE [quizsystem] SET  MULTI_USER
GO
ALTER DATABASE [quizsystem] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [quizsystem] SET DB_CHAINING OFF
GO
USE [quizsystem]
GO
/****** Object:  Table [dbo].[Question_sheet]    Script Date: 03/23/2019 16:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question_sheet](
	[Question_num] [bigint] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](50) NULL,
	[option_a] [nvarchar](50) NULL,
	[option_b] [nvarchar](50) NULL,
	[option_c] [nvarchar](50) NULL,
	[option_d] [nvarchar](50) NULL,
	[correct_ans] [nvarchar](50) NULL,
	[Section] [nvarchar](50) NULL,
 CONSTRAINT [PK_Question_sheet] PRIMARY KEY CLUSTERED 
(
	[Question_num] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Question_sheet] ON
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (1, N'20% of 1700 is ________?', N'170', N'340', N'170', N'270', N'340', N'Section A')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (2, N'5*2+5 = ________?', N'15', N'35', N'25', N'12', N'15', N'Section A')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (3, N'-3-2+5 = _________?', N'-2', N'1', N'-3', N'0', N'0', N'Section A')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (4, N'2''s power zero is equal to ________.', N'0', N'2', N'1', N'12', N'1', N'Section A')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (5, N'2 x (14 + 5) - 7 =', N'19', N'38', N'31', N'24', N'31', N'Section A')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (6, N'What is the value of 23 - (10 - a) if a = 5? ', N'23', N'5', N'10', N'17', N'17', N'Section A')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (7, N'4/2 -5 = ________?', N'1', N'-1', N'3', N'-3', N'-3', N'Section A')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (8, N'19-19*2 = __________?', N'0', N'12', N'38', N'19', N'19', N'Section A')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (9, N'16 in the root is ________?', N'16', N'8', N'2', N'4', N'4', N'Section A')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (10, N'ratio two - fifth is _______?', N'2:3', N'2:5', N'3:2', N'5:3', N'2:3', N'Section A')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (11, N'Jenny ___________ tired.', N'be', N'is', N'has', N'have', N'has', N'Section B')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (12, N'Today is friday.Yesterday ________ Thursday.', N'were', N'was', N'be', N'is', N'was', N'Section B')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (13, N'Today is friday.Tomorrow ________ Thursday.', N'were', N'was', N'will', N'will be', N'will be', N'Section B')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (14, N'________lots of animal in zoo.', N'There ', N'There is ', N'There are', N'There arr not', N'There are', N'Section B')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (15, N'Where _________ he live?', N'do', N'does', N'is ', N'was', N'does', N'Section B')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (16, N'__________ to London on the train Yesterday?', N'Did he go', N'Did he was', N'Did he went', N'He go', N'Did he go', N'Section B')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (17, N'Sanaullah ___________ urdu.', N'speak', N'spoken', N'speaking', N'speaks', N'speaks', N'Section B')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (18, N'How many people _________ there in yourfamily?', N'are', N'is', N'were', N'was', N'are', N'Section B')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (19, N'He ________ have mobile.', N'has', N'has not', N'have not', N'not', N'has not', N'Section B')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (20, N' ___________ is she? ', N'who', N'what', N'which', N'why', N'who', N'Section B')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (21, N' What is the chemiacal formula of water', N'OH2', N'CO2', N'H3O', N'H2O', N'H2O', N'Section C')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (22, N'What is the formula of Benzene', N'C6H5', N'H7C5', N'C6H6', N'C5H6', N'C6H6', N'Section C')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (23, N'What is the valance of outmost shell', N'5', N'6', N'2', N'8', N'8', N'Section C')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (24, N'What is the symbol of Silicon', N'Se', N'Si', N'Sa', N'So', N'si', N'Section C')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (25, N'What is the lightest element in periodic table', N'Air', N'Hydroen', N'Helium', N'Neutrons', N'Helium', N'Section C')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (26, N'What is the atomic number of caron', N'2', N'6', N'12', N'14', N'6', N'Section C')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (27, N'Which of the following nobal gas.', N'nitrogen', N'oxygen', N'carbondioxide', N'argon', N'argon', N'Section C')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (28, N'Which of the folowing is the highest ph value', N'Lemon Juice', N'Water', N'Wine', N'cold drink', N'Lemon Juice', N'Section C')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (29, N'What is the mass number of Hydrogen', N'2', N'4', N'6', N'8', N'2', N'Section C')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (30, N'What is the mass number of Carbon', N'11', N'13', N'12', N'6', N'12', N'Section C')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (31, N'What is the formula of Force', N'f=m/a', N'f=ma', N'f=a/m', N'f=wa', N'f=ma', N'Section D')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (32, N'Formula of ohm''s law', N'VI', N'V/I', N'IR', N'I/R', N'VI', N'Section D')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (33, N'Unit of power', N'watt', N'ohms', N'Ampere', N'volts', N'watt', N'Section D')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (34, N'Newton first law of motion', N'vf=vi+at', N'vf=vi-at', N'vi=vf+at', N'vi=vf-at', N'vi=vf+at', N'Section D')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (35, N'Formula of power ________.', N'p=wa', N'p=vi', N'p=ma', N'p=fm', N'p=vi', N'Section D')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (36, N'Unit of work', N'watt', N'ohms', N'Ampere', N'joul', N'joul', N'Section D')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (37, N'In series circuit __________ is constant', N'current', N'Voltage', N'Ristance', N'Circuit', N'current', N'Section D')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (38, N'In parallel circuit _________ remains constant.', N'current', N'Voltage', N'Ristance', N'Circuit', N'Voltage', N'Section D')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (39, N'S.I unit of ristance', N'ampere', N'ohms', N'watt', N'joul', N'ohms', N'Section D')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (40, N'S.I unit of current', N'ampere', N'ohms', N'watt', N'joul', N'ampere', N'Section D')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (41, N'Derivativee of 8x is', N'18', N'8', N'0', N'1', N'8', N'Section A')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (42, N'Derivative of sinx', N'cosx', N'-cosx', N'sinx', N'-sinx', N'cosx', N'Section A')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (43, N'Derivative of secx', N'secxcosecx', N'tanx', N'tanxsecx', N'cotxcosecx', N'tanxsecx', N'Section A')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (44, N'Derivative of lnx', N'x', N'1', N'lnx', N'1/x', N'1/x', N'Section A')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (45, N'Integral of cosx', N'sinx + c', N'cosx + c', N'-sinx + c', N'-cosx + c', N'sinx + c', N'Section A')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (46, N'2 * (1-3)/4', N'-4', N'4', N'1', N'-1', N'-1', N'Section A')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (47, N'y = -2x + 3,slope in given equation is _______', N'-2', N'2', N'3', N'-3', N'-2', N'Section A')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (48, N'Integral of 1/x', N'lnx + c', N'x + c', N'2x + c', N'1 + c', N'lnx + c', N'Section A')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (49, N'Abscissa - ordinate is written as ______', N'x + y', N'x - y', N'y + x', N'y - x', N'x - y', N'Section A')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (50, N'Equilatral triangle has ________ side same', N'0', N'2', N'1', N'3', N'3', N'Section A')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (51, N'Carbon is _______ valent', N'mono', N'di', N'tri', N'tatra', N'tatra', N'Section C')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (52, N'The number of proton is the number of', N'electron', N'proton and neutron', N'proton', N'neutron', N'proton', N'Section C')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (53, N'The unreactive group of the periodic table is ', N'IA', N'IVA', N'VIIA', N'VIIIA', N'VIIIA', N'Section C')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (54, N'According to boyle''s volume is propotional to', N'pressure', N'temperture', N'moles', N'absolute temperture', N'pressure', N'Section C')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (55, N'The bond formed by mutual sharing of electron is', N'ionic bond', N'electrovalent bond', N'covalent bond', N'dative bond', N'covalent bond', N'Section C')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (56, N'Halogens are also known as', N'Boron family', N'Carbon family', N'Chlorine family', N'Oxygen family', N'Chlorine family', N'Section C')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (57, N'The solid directly converts to gas is known as', N'evaporation', N'boiling', N'sublimation', N'melting', N'sublimation', N'Section C')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (58, N'The formula of natural gas is ', N'CH4', N'C2H6', N'C6H6', N'C3H8', N'CH4', N'Section C')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (59, N'The number of neutron and protium is ', N'1', N'2', N'0', N'3', N'0', N'Section C')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (60, N'Formula of water is ', N'H02', N'H2O2', N'H2O', N'H2O3', N'H2O', N'Section C')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (61, N'The turning effoect of foerce is ', N'couple', N'moment arm', N'stress', N'torque', N'torque', N'Section D')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (62, N'The rate of change of displacment is', N'Velocity', N'Acceleration', N'force', N'momentum', N'Velocity', N'Section D')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (63, N'The motion is pendullum is', N'linier motion', N'vibratory motion', N'osillatory motion', N'rotatonry motion', N'vibratory motion', N'Section D')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (64, N'The product of mass and velocity is', N'torque', N'force', N'momentum', N'acceleration', N'momentum', N'Section D')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (65, N'The horizontal component of velocity is ', N'demand constant is ', N'Astro Physics', N'Nuclear Physics', N'Geo Physics', N'Astro Physics', N'')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (66, N'The rate workdone is', N'energy', N'power', N'momentum', N'strain', N'power', N'Section D')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (67, N'The unit of strain is ', N'N', N'N/m', N'N/m^2', N'It has no unit', N'It has no unit', N'Section D')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (68, N'The 20kg body has accelaration of 4m/s ', N'40', N'10', N'20', N'80', N'80', N'Section D')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (69, N'Diffrences between temperature is ', N'T2 - T1', N'T1 - T2', N'T1=T2', N'T1T2=0', N'T2 - T1', N'Section D')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (70, N'The book is ________ mug and pen.', N'Between', N'Inside', N'On', N'Of', N'Sun', N'Section B')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (71, N'He is worried _____________ his life.', N'for', N'of', N'about', N'with', N'about', N'Section B')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (72, N'We Congrates you _______ your achievement.', N'for', N'on', N'to', N'at', N'at', N'Section B')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (73, N'Sanaullah is travelling _________ to school.', N'off', N' to', N' towards', N'through', N' towards', N'Section B')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (74, N'Sana is starring __________ you.', N'at', N'on', N'in', N' towards', N'at', N'Section B')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (75, N'A thing to boil water is _________', N'Knife', N'Kettle', N'Jug', N'Cup', N'Kettle', N'Section B')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (76, N'If he knew her number,he _____ call her.', N'would', N'would be', N'coiuld', N'will', N'would', N'Section B')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (77, N'_________ finished his work', N'He has', N'Has he ', N'Hasnt he', N'Isnt it ', N'He has', N'Section B')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (78, N'If he is working hard, he ______ clear course.', N'will', N'will be', N'should', N'has', N'will', N'Section B')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (79, N'Sahid _________ use to football.', N'did not', N'did', N'do not', N'will not', N'did not', N'Section B')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (80, N'I ____________ to watch movies', N'used', N'use', N'did not used', N'was not used', N'used', N'Section B')
INSERT [dbo].[Question_sheet] ([Question_num], [Question], [option_a], [option_b], [option_c], [option_d], [correct_ans], [Section]) VALUES (81, N'He does not ________ to ride a bike.', N'have', N'has', N'was', N'had', N'have', N'')
SET IDENTITY_INSERT [dbo].[Question_sheet] OFF
/****** Object:  Table [dbo].[login]    Script Date: 03/23/2019 16:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[login](
	[Category] [varchar](50) NULL,
	[User_id] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Test] [bit] NULL,
	[Date] [varchar](50) NULL,
	[T_Marks] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[login] ([Category], [User_id], [Password], [Test], [Date], [T_Marks]) VALUES (N'Student', N'9123', N'a0300', 1, N'10/12/02018', NULL)
INSERT [dbo].[login] ([Category], [User_id], [Password], [Test], [Date], [T_Marks]) VALUES (N'Student', N'9124', N'b0300', 1, N'10/12/02018', NULL)
INSERT [dbo].[login] ([Category], [User_id], [Password], [Test], [Date], [T_Marks]) VALUES (N'Student', N'9125', N'c0300', 1, N'10/12/02018', NULL)
INSERT [dbo].[login] ([Category], [User_id], [Password], [Test], [Date], [T_Marks]) VALUES (N'Student', N'9126', N'd0300', 0, NULL, NULL)
INSERT [dbo].[login] ([Category], [User_id], [Password], [Test], [Date], [T_Marks]) VALUES (N'Student', N'9127', N'e0300', 1, N'10/12/02018', NULL)
INSERT [dbo].[login] ([Category], [User_id], [Password], [Test], [Date], [T_Marks]) VALUES (N'Student', N'9128', N'f0300', 0, NULL, NULL)
INSERT [dbo].[login] ([Category], [User_id], [Password], [Test], [Date], [T_Marks]) VALUES (N'Student', N'9129', N'g0300', 1, N'10/12/02018', NULL)
INSERT [dbo].[login] ([Category], [User_id], [Password], [Test], [Date], [T_Marks]) VALUES (N'Admin', N'9478', N'94780300', 0, NULL, NULL)
INSERT [dbo].[login] ([Category], [User_id], [Password], [Test], [Date], [T_Marks]) VALUES (N'Admin', N'9477', N'94770300', 0, NULL, NULL)
INSERT [dbo].[login] ([Category], [User_id], [Password], [Test], [Date], [T_Marks]) VALUES (N'Admin', N'9479', N'94790300', 0, NULL, NULL)
