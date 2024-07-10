use [Tournaments]
go
--Gets all the Team for a given tournament
create procedure dbo.spTeam_GetByTournament
	@TournamentName nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT a.*
	from dbo.Teams as a
	INNER JOIN dbo.Tournaments t on a.TeamName = t.TournamentName
	where t.TournamentName = @TournamentName;
END