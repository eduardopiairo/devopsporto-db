CREATE OR ALTER PROCEDURE [dbo].[spLoginUser] (@userName NVARCHAR(50))
AS	
	SET NOCOUNT ON

    SELECT MemberUserName FROM dbo.Member WHERE MemberUserName = @userName

	RETURN
GO