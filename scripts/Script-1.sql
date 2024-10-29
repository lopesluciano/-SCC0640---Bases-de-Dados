create table aluno (
    cpf CHAR(14),
    CONSTRAINT pk_aluno PRIMARY KEY (cpf)
);

create table professor (
    cpf CHAR(14),
    CONSTRAINT pk_professor PRIMARY KEY (cpf)
);

drop table aluno;