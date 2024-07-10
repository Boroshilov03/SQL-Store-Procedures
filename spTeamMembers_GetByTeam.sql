
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE dbo.spTeamMembers_GetByTeam
	@TeamId int
AS
BEGIN
	SET NOCOUNT ON;
	SELECT *
	FROM dbo.TeamMembers as m INNER JOIN dbo.Teams as t
	ON m.TeamId  = t.id
	WHERE m.id  = @TeamId;
END
