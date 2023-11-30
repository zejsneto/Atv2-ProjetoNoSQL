--Escreva uma query que retorna qual estudante fez qual disciplina do próprio orientador. Retorne apenas o nome do estudante, do professor e da disciplina.
([
  {
    $lookup: {
      from: "instructor",
      localField: "advisor",
      foreignField: "instructorId",
      as: "advisorInfo"
    }
  },
  {
    $unwind: "$takes"
  },
  {
    $lookup: {
      from: "course",
      localField: "takes.course_id",
      foreignField: "course_id",
      as: "courseInfo"
    }
  },
  {
    $unwind: {
      path: "$courseInfo",
      preserveNullAndEmptyArrays: true
    }
  },
  {
    $unwind: "$advisorInfo"
  },
  {
    $project: {
      _id: 0,
      student_name: "$name",
      advisor_name: "$advisorInfo.name",
      course_title: { $ifNull: ["$courseInfo.title", "N/A"] }
    }
  }
])

--Escreva uma query que retorna qual sala (prédio e número) cada professor dá aula?
([
  {
    $unwind: {
      path: "$teaches",
      preserveNullAndEmptyArrays: true
    }
  },
  {
    $lookup: {
      from: "section",
      localField: "teaches.course_id",
      foreignField: "course_id",
      as: "courseSection"
    }
  },
  {
    $unwind: {
      path: "$courseSection",
      preserveNullAndEmptyArrays: true
    }
  },
  {
    $project: {
      _id: 0,
      instructorId: 1,
      name: 1,
      course_id: "$teaches.course_id",
      classroom: { $ifNull: ["$courseSection.classroom", "N/A"] }
    }
  }
])

--Escreva uma query que retorna qual o nome, orçamento, total de alunos e salário médio de cada departamento?
([
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