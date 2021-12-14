/*  https://github.com/ElderHenhique/SQL---Consultas.git  */

 #(DESCRIÇÃO) Encontre o ano de duracao de inicio e de termino de todos os funcionarios #
       
		SELECT D.desde
			FROM DURACAO AS D
       INTERSECT
		SELECT D.ate
			FROM DURACAO AS D
       
       #(DESCRIÇÃO) Encontre o nome de todos os funcionarios dos departamentos 1 e 3 #
		SELECT F.nome
			FROM FUNCIONARIOS AS F, DEPARTAMENTO AS D
			WHERE D.id_depart = 001
       INTERSECT
		SELECT F.nome
			FROM FUNCIONARIOS AS F, DEPARTAMENTO AS D
			WHERE D.id_depart = 003
       
       #(DESCRIÇÃO) Encontre os nome dos setores e seus respectivos orcamentos do departamento #
		SELECT S.tipo_de_produto
			FROM SETORES AS S
       INTERSECT
		SELECT D.orcamento
			FROM DEPARTAMENTO AS D
       
       #(DESCRIÇÃO) Encontre o nome de todos os produtos que contenha o preço de 1.70 a 17.00 ou que o produto seja menor que 2.00 reais #
		
		SELECT P.nome
			FROM PRODUTOS AS P,
			WHERE P.preco BETWEEN 1.70 AND 17.00 
        UNION
		SELECT P.nome
			FROM PRODUTOS AS P,
			WHERE P.preco < 2.00
        
        #(DESCRIÇÃO) Encontre a nota de todas as provas diferente de 0 e os nomes das Disciplinas do curso de 'DIREITO' que tenha a letra A #
	
    SELECT D.notas
		FROM DISCIPLINA AS D
		WHERE D.notas <> 0
    INTERSECT
	SELECT D.nomes
		FROM DISCIPLINA AS D
		WHERE D.curso = 'DIREITO'
			AND D.materias LIKE '%A%'
        
        #(DESCRIÇÃO) Encontre o numero total de cadeiras de um cinema ou quantas salas esse cinema possui #
        
        SELECT COUNT(C.Pocicao_cadeiras)
			FROM CINEMA as C
		UNION
		SELECT COUNT(C.salas_Cin)
			FROM CINEMA as C
        
	#(DESCRIÇÃO)  Encontre a menor nota da Disciplina de 'Calculo' e a maior nota do da Disciplina de 'Administracao' #
        
        SELECT T.notas
			FROM DISCIPLINA AS, D TURMA AS T
			WHERE D.nome = 'Calculo'
				AND T.nome = D.nome
				AND T.notas = MIN(T.notas)
        INTERSECT
        SELECT T.notas
			FROM DISCIPLINA AS, D TURMA AS T
			WHERE D.nome = 'Administracao'
				AND T.nome = D.nome
				AND T.notas = MAX(T.notas)
                
	#(DESCRIÇÃO) Encontre a media dos carros que param em um estacionamento ou a soma de dos ganhos totais no dia #
         SELECT AVG(E.qntdCarro)
			FROM ESTACIONAMENTO AS E
			UNION
		SELECT SUM(E.ganhosT)
			FROM ESTACIONAMENTO AS E
            
		#(DESCRIÇÃO) Encontre o nome e o sexo dos estudantes que tenha coeficiente maior que 9.0 de um Universidade ou o nome e o sexo do estudante que tenha o coeficiente menor que 3.0  #
			SELECT E.nome, E.sexo
				FROM ESTUDANTE AS E
				WHERE E.coef = SELECT(E.coef > 9.0 )
			UNION
            SELECT E.nome, E.sexo
				FROM ESTUDANTE AS E
				WHERE E.coef = SELECT(E.coef > 3.0 )
                
                
		#(DESCRIÇÃO) Encontre o nome de um supermercado que tenha a string 'd_a' e o endereco do mesmo que contenha a string 'tri'  #
        SELECT S.nome
			FROM SUPERMERCADO AS S
			WHERE S.nome LIKE '%d_a%'
        INTERSECT
        SELECT S.endereco
			FROM SUPERMERCADO AS S
			WHERE S.endereco LIKE '%tri%'

        
        
        
        
        