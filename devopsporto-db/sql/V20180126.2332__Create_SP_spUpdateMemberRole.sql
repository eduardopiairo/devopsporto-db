CREATE PROCEDURE spUpdateMemberRole 
	-- Add the parameters for the stored procedure here
	@userId INT,
	@roleId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE dbo.Member SET RoleId = @RoleId WHERE MemberId = @userId
END
GO