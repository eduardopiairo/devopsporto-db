CREATE TABLE [dbo].[Member](
	[MemberId] [INT] IDENTITY(1,1) NOT NULL,
	[MemberUserName] [NVARCHAR](50) NOT NULL,
	[MemberFirstName] [NVARCHAR](50) NULL,
	[MemberLastName] [NVARCHAR](50) NULL	 
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
