# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Applicant.create({name: "Miranda Lundin", mentor:	"Lauren Kaplan", unit: "LC17"})
Applicant.create({name: "Steven Gauthier", manager:	"Nicole Woltcheck", mentor:	"Lauren Kaplan", unit: "LC17",	employee_id: 31804})