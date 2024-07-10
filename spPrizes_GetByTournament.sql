use [Tournaments]
go
--Gets all the prizes for a given tournament
create procedure dbo.spPrizes_GetByTournament
	@TournamentId int
AS
BEGIN
	SET NOCOUNT ON;
	SELECT p.*
	from dbo.Prizes as p
	INNER JOIN dbo.TournamentPrizes t on p.id = t.PrizeId
	where t.TournamentId = @TournamentId;
END