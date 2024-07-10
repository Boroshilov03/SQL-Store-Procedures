use [Tournaments]
go

--Gets all the matchups for a given tournament
create procedure dbo.spMatchups_GetByTournament
	@TournamentId int
AS

SELECT * FROM dbo.Matchups as m
INNER JOIN dbo.Tournaments as t WHERE m.id = t.