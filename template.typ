#let sheetheader(students, tutorial, module, tasks) = grid(
  columns: (1fr, 1fr),
  table(
    columns: (auto, 1fr),
    stroke: none,
    [Students], students,
    [Tutorial], tutorial,
    [Module], module,
  ),
  align(center, table(
    columns: range(tasks + 1).map(_ => 1fr),
    rows: (auto, 1.5cm),
    stroke: (y: none),
    ..for i in range(1, tasks + 1) { ([#i],) },
    [$Sigma$],
    table.hline()
  )),
)
#let header(students, module, sheet) = [
  #grid(
    columns: (1fr, 1fr, 1fr),
    align(left, module), align(center, [Assignment #sheet]), align(right, students),
  )
  #line(length: 100%)
]

#let students = [Name 1 & Name 2]
#let tutorial = [Bert Baumann]
#let module = [Grundlagen des Studierens]
#let sheet = 1
#let tasks = 4

#set page(header: header(students, module, sheet))
#sheetheader(students, tutorial, module, tasks)
#set enum(numbering: "(a)")

= Assignment 1

== 1 How to Template

+ Solution goes here.

+ And here.
