--1
SELECT Nome,Ano FROM filmes;

--2
SELECT Nome,Ano FROM filmes ORDER BY Ano;

--3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = "De Volta para o Futuro";

--4
SELECT * FROM Filmes WHERE Ano = 1997;

--5
SELECT * FROM Filmes WHERE Ano < 2000;

--6
SELECT * FROM Filmes WHERE Duracao < 100 AND duracao > 150;

--7
SELECT * FROM Filmes GROUP BY Ano ORDER BY Duracao;

--8
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = "M";

--9
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = "F" ORDER BY PrimeiroNome;

--10
SELECT f.Nome,g.Genero
FROM filmes f
INNER JOIN FilmesGenero ON f.Id = IdFilme
INNER JOIN Genero g ON IdFilme = Id;

--11
SELECT f.Nome,g.Genero
FROM filmes f
INNER JOIN FilmesGenero ON f.Id = FilmeGenero.IdFilme
INNER JOIN Generos g ON FilmeGenero.IdFilme = g.Id
AND g.Genero = "Mistério";

--12
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, p.Papel
FROM Filmes f
INNER JOIN ElencoFilme p ON f.Id = p.IdFilme
INNER JOIN Atores a ON p.IdAtor = a.Id;