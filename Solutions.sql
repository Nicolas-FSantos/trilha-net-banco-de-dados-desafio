-- Solução 1
SELECT Nome, Ano FROM Filmes

-- Solução 2
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano

-- Solução 3
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- Solução 4
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

-- Solução 5
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano >= 2000

-- Solução 6
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- Solução 7
SELECT Ano, COUNT(*) Quantidade   
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- Solução 8
SELECT * FROM Atores 
WHERE Genero = 'M'

-- Solução 9 
SELECT * FROM Atores 
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Solução 10
SELECT F.Nome, G.Genero FROM Filmes F 
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme 
INNER JOIN Generos G ON FG.IdGenero = G.Id

-- Solução 11
SELECT F.Nome, G.Genero FROM Filmes F 
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme 
INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério'

-- Solução 12

SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM Filmes F 
INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme 
INNER JOIN Atores A  ON EF.IdAtor = A.Id
