# Atv2-ProjetoNoSQL
Atividade 2 - Projeto | Tópicos Avançados de Banco de Dados - [FEI](https://portal.fei.edu.br/). <br>
Para a atividade 2 temos 2 arquivos neste repositório, um contendo as inserções no MongoDB e outro contendo as queries da Atividade 1. Abaixo (neste README) também há um resumo de tudo da atividade juntamento com nome e RA dos integrantes.

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
insert into takes values ('00128', 'CS-101', '1', 'Spring', '2018', 'A');<br>
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

insert into instructor values ('98345', 'Kim', 'Elec. Eng.', '80000');<br>
insert into teaches values ('98345', 'EE-181', '1', 'Spring', '2017');<br>
insert into advisor values ('76653', '98345');<br><br>

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

insert into course values ('CS-101', 'Intro. to Computer Science', 'Comp. Sci.', '4');<br>
sem prereq

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
{
  "_id": {
    "$oid": "6542db0a88b47a69ec2aac86"
  },
  "studentId": "00128",
  "name": "Zhang",
  "dept_name": "Comp. Sci.",
  "tot_cred": "102",
  "advisor": "45565",
  "takes": [
    {
    "course_id": "CS-101",
    "sec_id": "1",
    "semester": "Spring",
    "year": "2018",
    "grade": "A"
    }
  ]
}

{
  "_id": {
    "$oid": "6542db0a88b47a69ec2aac86"
  },
  "studentId": "12345",
  "name": "Shankar",
  "dept_name": "Comp. Sci.",
  "tot_cred": "32",
  "advisor": "10101",
  "takes": [
    {
    "course_id": "CS-101",
    "sec_id": "1",
    "semester": "Fall",
    "year": "2017",
    "grade": "C"
    }
  ]
}

{
  "_id": {
    "$oid": "6542db0a88b47a69ec2aac86"
  },
  "studentId": "23121",
  "name": "Chavez",
  "dept_name": "Finance",
  "tot_cred": "101",
  "advisor": "76543",
  "takes": [
    {
    "course_id": "FIN-201",
    "sec_id": "1",
    "semester": "Spring",
    "year": "2018",
    "grade": "C+"
    }
  ]
}


**Instructor:**<br><br>

{
  "_id": {
    "$oid": "6542e06f88b47a69ec2aac8c"
  },
  "instructorId": "10101",
  "name": "Srinivasan",
  "dept_name": "Comp. Sci.",
  "salary": "65000",
  "students": [
    {"s_id":"12345"}
  ],
  "teaches": [
    {"course_id": "CS-101",
    "sec_id": "1",
    "semester": "Fall",
    "year": "2017"}
  ]
}

{
  "_id": {
    "$oid": "6542e06f88b47a69ec2aac8c"
  },
  "instructorId": "45565",
  "name": "Katz",
  "dept_name": "Comp. Sci.",
  "salary": "75000",
  "students": [
    {"s_id":"00128"}
  ],
  "teaches": [
    {"course_id": "CS-101",
    "sec_id": "1",
    "semester": "Spring",
    "year": "2018"}
  ]
}

{
  "_id": {
    "$oid": "6542e06f88b47a69ec2aac8c"
  },
  "instructorId": "76543",
  "name": "Singh",
  "dept_name": "Finance",
  "salary": "80000",
  "students": [
    {"s_id":"23121"}
  ],
  "teaches": [
    {"course_id": "FIN-201",
    "sec_id": "1",
    "semester": "Spring",
    "year": "2018"}
  ]
}

{
  "_id": {
    "$oid": "6542e06f88b47a69ec2aac8c"
  },
  "instructorId": "98345",
  "name": "Kim",
  "dept_name": "Elec. Eng.",
  "salary": "80000",
  "students": [
    {"s_id":"76653"}
  ],
  "teaches": [
    {"course_id": "EE-181",
    "sec_id": "1",
    "semester": "Spring",
    "year": "2017"}
  ]
}

**Department:**<br><br>

{
  "_id": {
    "$oid": "6567b435a5fd02e2068353fa"
  },
  "dept_name": "Comp. Sci.",
  "building": "Taylor",
  "budget": "100000"
}

{
  "_id": {
    "$oid": "6567b435a5fd02e2068353fa"
  },
  "dept_name": "Elec. Eng.",
  "building": "Taylor",
  "budget": "85000"
}

{
  "_id": {
    "$oid": "6567b435a5fd02e2068353fa"
  },
  "dept_name": "Finance",
  "building": "Painter",
  "budget": "120000"
}

**Course:**<br><br>

{
  "_id": {
    "$oid": "6567b481a5fd02e2068353fc"
  },
  "course_id": "BIO-301",
  "title": "Genetics",
  "dept_name": "Biology",
  "credits": "4",
  "prereq": [
    {
    "prereq_id": "BIO-101"
  }
  ]
}

{
  "_id": {
    "$oid": "6567b481a5fd02e2068353fc"
  },
  "course_id": "CS-190",
  "title": "Game Design",
  "dept_name": "Comp. Sci.",
  "credits": "4",
  "prereq": [{
    "prereq_id": "CS-101"
  }
  ]
}

{
  "_id": {
    "$oid": "6567b481a5fd02e2068353fc"
  },
  "course_id": "CS-315",
  "title": "Robotics",
  "dept_name": "Comp. Sci.",
  "credits": "3",
  "prereq": [{
    "prereq_id": "CS-101"
  }
  ]
}

{"_id":{"$oid":"6567e539e4fef51357d2b0fc"},"course_id":"CS-101","title":"Intro. to Computer Science","dept_name":"Comp. Sci.","credits":"4","prereq":[{"prereq_id":""}]}

**Section:**<br><br>
{
  "_id": {
    "$oid": "6567b563a5fd02e2068353ff"
  },
  "sec_id": "1",
  "course_id": "CS-101",
  "semester": "Fall",
  "year": "2017",
  "classroom": [
    {
    "building": "Packard",
    "room_no": "101",
    "capacity": "500"
  }
  ],
  "time_slot": [
    {
    "time_slot_id": "H",
    "day": "W",
    "start_time": "10:00",
    "end_time": "12:30"
  }
  ]
}

{
  "_id": {
    "$oid": "6567b563a5fd02e2068353ff"
  },
  "sec_id": "1",
  "course_id": "HIS-351",
  "semester": "Spring",
  "year": "2018",
  "classroom": [
    {
    "building": "Painter",
    "room_no": "514",
    "capacity": "10"
  }
  ],
  "time_slot": [
    {
    "time_slot_id": "C",
    "day": "M",
    "start_time": "11:00",
    "end_time": "11:50"
  }
  ]
}

{
  "_id": {
    "$oid": "6567b563a5fd02e2068353ff"
  },
  "sec_id": "1",
  "course_id": "CS-190",
  "semester": "Spring",
  "year": "2017",
  "classroom": [
    {
    "building": "Taylor",
    "room_no": "3128",
    "capacity": "70"
  }
  ],
  "time_slot": [
    {
    "time_slot_id": "E",
    "day": "T",
    "start_time": "10:30",
    "end_time": "11:45"
  }
  ]
}

# Queries Atividade 1

Queries da atividade 1 refeitas para o banco não relacional:

**Query 1: Escreva uma query que retorna qual estudante fez qual disciplina do próprio orientador. Retorne apenas o nome do estudante, do professor e da disciplina.**<br><br>

**Query 2: Escreva uma query que retorna qual sala (prédio e número) cada professor dá aula?**<br><br>

**Query 3: Escreva uma query que retorna qual o nome, orçamento, total de alunos e salário médio de cada departamento?**<br>
<br>([
  {
    $lookup: {
      from: "student",
      localField: "dept_name",
      foreignField: "dept_name",
      as: "students_info"
    }
  },
  {
    $lookup: {
      from: "instructor",
      localField: "dept_name",
      foreignField: "dept_name",
      as: "instructors_info"
    }
  },
  {
    $unwind: "$instructors_info"
  },
  {
    $group: {
      _id: {
        dept_name: "$dept_name",
        name: "$instructors_info.name"
      },
      budget: { $first: "$budget" },
      total_students: { $sum: { $size: "$students_info" } },
      total_salary: { $sum: "$instructors_info.salary" },
      num_instructors: { $sum: 1 }
    }
  },
  {
    $group: {
      _id: "$_id.dept_name",
      name: { $first: "$_id.dept_name" },
      budget: { $first: "$budget" },
      total_students: { $first: "$total_students" },
      avg_salary: { $avg: "$total_salary" },
      num_instructors: { $sum: "$num_instructors" }
    }
  },
  {
    $project: {
      _id: 0,
      name: 1,
      budget: 1,
      total_students: 1,
      avg_salary: { $round: ["$avg_salary", 2] },
      num_instructors: 1
    }
  }
])
