CREATE TABLE professor(
	idProfessor INTEGER PRIMARY KEY,
	nome VARCHAR(25)
);

CREATE TABLE disciplina (
	idDisciplina INTEGER PRIMARY KEY,
	nome VARCHAR(25)
);

DROP TABLE leciona;

CREATE TABLE leciona(
	idProfessor INTEGER,
	idDisciplina INTEGER,
	PRIMARY KEY (idProfessor, idDisciplina),
	FOREIGN KEY (idProfessor) REFERENCES professor(idProfessor),
	FOREIGN KEY (idDisciplina) REFERENCES disciplina(idDisciplina)
);

CREATE TABLE aluno (
	idAluno INTEGER,
	nome VARCHAR(25),
	PRIMARY KEY (idAluno)	
);

DROP TABLE prova;
CREATE TABLE prova (
	idDisciplina INTEGER,
	idAluno INTEGER,
	idProva INTEGER,
	nota NUMERIC(2,1),
	PRIMARY KEY (idDisciplina, idAluno, idProva),
	FOREIGN KEY (idDisciplina) REFERENCES disciplina (idDisciplina),
	FOREIGN KEY (idAluno) REFERENCES aluno (idAluno)
);

CREATE TABLE assiste(
	idDisciplina INTEGER,
	idAluno INTEGER,
	data DATE,
	faltas INTEGER,
	PRIMARY KEY (idDisciplina, idAluno, data),
	FOREIGN KEY (idDisciplina) references disciplina(idDisciplina),
	FOREIGN KEY (idAluno) REFERENCES aluno(idAluno)
);

