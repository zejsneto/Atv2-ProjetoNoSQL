# Atv2-ProjetoNoSQL
Atividade 2 - Projeto | Tópicos Avançados de Banco de Dados - [FEI](https://portal.fei.edu.br/).

# Integrantes
José Joaquim da Silva Neto - 22.221.013-0 <br>
Gabriel Martinho S. de Moraes - 22.120.039-7 <br>
Lucas Gugliemi Pereira - 22.121.013-1

# Enunciado
Usando a [base de dados de exemplo do livro](https://db-book.com/university-lab-dir/sample_tables-dir/index.html), escolha um dos bancos NoSQL visto em aula (wide-colum storage, document storage ou graph database) e escreva os scripts necessários para salvar os mesmos dados no formato do banco escolhido. Faça as modificações necessárias nas relações dos dados para armazenar da melhor forma possível no banco NoSQL escolhido.

Além do script para a escrita dos dados no banco, faça as mesmas queries da atividade 1 no banco que você escolheu (estas queries devem estar no repositório junto com o script).

A entrega deverá ser o endereço de um repositório público no Github, sendo que o projeto pode conter até 3 pessoas da sua turma de laboratório.

# Inserções do BD Relacional

Inserções consideradas do banco relacional:

**Student:**<br><br>
insert into student values ('00128', 'Zhang', 'Comp. Sci.', '102');<br>
insert into takes values ('00128', 'CS-101', '1', 'Fall', '2017', 'A');<br>
insert into advisor values ('00128', '45565');<br><br>
insert into student values ('12345', 'Shankar', 'Comp. Sci.', '32');<br>
insert into takes values ('12345', 'CS-101', '1', 'Fall', '2017', 'C');<br>
insert into advisor values ('12345', '10101');<br><br>
insert into student values ('23121', 'Chavez', 'Finance', '110');<br>
insert into takes values ('23121', 'FIN-201', '1', 'Spring', '2018', 'C+');<br>
insert into advisor values ('23121', '76543');<br>

**Instructor:**<br><br>
insert into instructor values ('10101', 'Srinivasan', 'Comp. Sci.', '65000');<br>
insert into teaches values ('10101', 'CS-101', '1', 'Fall', '2017');<br>
insert into advisor values ('12345', '10101');<br><br>

insert into instructor values ('45565', 'Katz', 'Comp. Sci.', '75000');<br>
insert into teaches values ('45565', 'CS-101', '1', 'Spring', '2018');<br>
insert into advisor values ('00128', '45565');<br><br>

insert into instructor values ('76543', 'Singh', 'Finance', '80000');<br>
insert into teaches values ('76543', 'FIN-201', '1', 'Spring', '2018');<br>
insert into advisor values ('23121', '76543');<br><br>

**Department:**<br><br>
insert into department values ('Comp. Sci.', 'Taylor', '100000');<br><br>
insert into department values ('Elec. Eng.', 'Taylor', '85000');<br><br>
insert into department values ('Finance', 'Painter', '120000');<br><br>

**Course:**<br><br>
insert into course values ('BIO-301', 'Genetics', 'Biology', '4');<br>
insert into prereq values ('BIO-301', 'BIO-101');<br><br>

insert into course values ('CS-190', 'Game Design', 'Comp. Sci.', '4');<br>
insert into prereq values ('CS-190', 'CS-101');<br><br>

insert into course values ('CS-315', 'Robotics', 'Comp. Sci.', '3');<br>
insert into prereq values ('CS-315', 'CS-101');<br><br>

**Section:**<br><br>
insert into section values ('CS-101', '1', 'Fall', '2017', 'Packard', '101', 'H');<br>
insert into classroom values ('Packard', '101', '500');<br>
insert into time_slot values ('H', 'W', '10', '0', '12', '30');<br><br>

insert into section values ('HIS-351', '1', 'Spring', '2018', 'Painter', '514', 'C');<br>
insert into classroom values ('Painter', '514', '10');<br>
insert into time_slot values ('C', 'M', '11', '0', '11', '50');<br><br>

insert into section values ('CS-190', '1', 'Spring', '2017', 'Taylor', '3128', 'E');<br>
insert into classroom values ('Taylor', '3128', '70');<br>
insert into time_slot values ('E', 'T', '10', '30', '11', '45 ');<br><br>

# Inserções no MongoDB

Inserções para o banco não relacional:

**Student:**<br><br>

**Instructor:**<br><br>

**Department:**<br><br>

**Course:**<br><br>

**Section:**<br><br>
