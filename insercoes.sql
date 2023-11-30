--student
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
    "semester": "Fall",
    "year": "2017",
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

--instructor
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

{ "_id": { "$oid": "6542e06f88b47a69ec2aac8c" }, "instructorId": "98345", "name": "Kim", "dept_name": "Elec. Eng.", "salary": "80000", "students": [ {"s_id":"76653"} ], "teaches": [ {"course_id": "EE-181", "sec_id": "1", "semester": "Spring", "year": "2017"} ] }

--department
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

--course
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

--section
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