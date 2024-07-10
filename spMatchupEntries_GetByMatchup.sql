use [Tournaments]
go
----Gets all the Matchup Entries for a given Matchup
create procedure dbo.spMatchupEntries_GetByMatchup
	@MatchupId int
AS

SELECT m.*
FROM dbo.Matchups as m
INNER JOIN  dbo.MatchupsEntries as e on m.id = e.MatchupId  
WHERE m.id = @MatchupId;