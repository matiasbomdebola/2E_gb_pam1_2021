create database aula0913;
use aula0913;
create table curso (
id_curso int primary key auto_increment,
nome varchar(80) not null,
periodo char,
duracao int
);
create table disciplina (
id_disciplina int primary key auto_increment,
nome varchar(80) not null,
professor varchar(80),
curso int, foreign key (curso) references curso(id_curso)
);
insert into curso values (null, 'tecnico em administração', 't', 3);
insert into curso values (null, 'tecnico em desenvolvimento de sistemas', 'm', 6);

insert into disciplina values (null, 'aplicativos informatizados', 'Celso', 1);
insert into disciplina values (null, 'programação web', 'Danilo', 2);
insert into disciplina values (null, 'desenvolvimento de sistemas', 'Aquiles', 2);

desc curso;
desc disciplina;
select * from curso;
select * from disciplina;
select * from curso where duracao <= 3;
select nome from disciplina order by nome;
select * from disciplina where professor = 'Aquiles;