# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Manager.create({name: "Nicole M Anager"})
Mentor.create({name: "Lauren Mentorson"})
Applicant.create({name: "Miranda Jones", mentor_id: 1, manager_id: 1, unit: "LC17"})
Applicant.create({name: "Steven Smith", manager_id: 1, mentor_id: 1, unit: "LC17",	employee_id: 31254})