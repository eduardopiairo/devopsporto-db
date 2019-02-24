ALTER TABLE Member ADD MemberRoleId INT;

ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK_Member_Role] FOREIGN KEY([MemberRoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO

ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK_Member_Role]
GO