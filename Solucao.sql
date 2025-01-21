--1
SELECT Nome, Ano 
  FROM FILMES;

--2
SELECT Nome, Ano, Duracao
  FROM FILMES
 ORDER BY Ano;

--3
SELECT Nome, Ano, Duracao
  FROM FILMES
 WHERE upper(nome) = 'DE VOLTA PARA O FUTURO';

--4
SELECT Nome, Ano, Duracao
  FROM FILMES
 WHERE ano = 1997;

--5
SELECT Nome, Ano, Duracao
  FROM FILMES
 WHERE ano > 2000;

--6
SELECT Nome, Ano, Duracao
  FROM FILMES
 WHERE duracao BETWEEN 101 AND 150
 ORDER BY duracao;

--7
SELECT Ano, count(*) as Quantidade
  FROM FILMES
 GROUP BY ano
 ORDER BY 
       sum(duracao) DESC,
       ano ASC
	   /*Quantidade DESC,
	   ANO*/;

--8
SELECT *
  FROM ATORES
 WHERE genero = 'M';

--9
SELECT *
  FROM ATORES
 WHERE genero = 'F'
 ORDER BY primeironome;

--10
SELECT f.Nome, g.Genero
  FROM FILMES f
 INNER JOIN FILMESGENERO fg 
       ON f.id = fg.idfilme 
 INNER JOIN GENEROS g
       ON fg.idgenero = g.id;

--11
SELECT f.Nome, g.Genero
  FROM FILMES f
 INNER JOIN FILMESGENERO fg 
       ON f.id = fg.idfilme 
 INNER JOIN GENEROS g
       ON fg.idgenero = g.id
 WHERE upper(g.genero) = 'MISTÉRIO';

--12
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
  FROM FILMES f
 INNER JOIN ELENCOFILME ef
       ON f.id = ef.idfilme 
 INNER JOIN ATORES a
       ON ef.idator = a.id;