-- Solu��o 1
SELECT Nome, Ano FROM Filmes

-- Solu��o 2
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano

-- Solu��o 3
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- Solu��o 4
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

-- Solu��o 5
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano >= 2000

-- Solu��o 6
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- Solu��o 7
SELECT Ano, COUNT(*) Quantidade   
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- Solu��o 8
SELECT * FROM Atores 
WHERE Genero = 'M'

-- Solu��o 9 
SELECT * FROM Atores 
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Solu��o 10
SELECT F.Nome, G.Genero FROM Filmes F 
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme 
INNER JOIN Generos G ON FG.IdGenero = G.Id

-- Solu��o 11
SELECT F.Nome, G.Genero FROM Filmes F 
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme 
INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mist�rio'

-- Solu��o 12

SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM Filmes F 
INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme 
INNER JOIN Atores A  ON EF.IdAtor = A.Id
