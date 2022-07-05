USE [quizsystem]
GO

/****** Object:  Table [dbo].[Question_sheet]    Script Date: 11/27/2018 22:09:39 ******/
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

