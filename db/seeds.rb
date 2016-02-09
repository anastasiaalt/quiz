# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Answer.destroy_all
Option.destroy_all
Student.destroy_all
Instructor.destroy_all
Question.destroy_all
Quiz.destroy_all

a1 = Answer.create({name: "Washington, D.C", explanation: "Washington, D.C. became the capital in 1790"})
a2 = Answer.create({name: "Philadelphia, PA", explanation: "The Constitution was written during the Philadelphia Convention—now known as the Constitutional Convention—which convened from May 25 to September 17, 1787. It was signed on September 17, 1787"})
a3 = Answer.create({name: "Provincetown, MA", explanation: "The Pilgrims first landed, however, near the site of modern Provincetown on the tip of Cape Cod in November 1620 before moving to Plymouth"})

o1 = Option.create({name: "New York, NY"})
o2 = Option.create({name: "Miami, FL"})
o3 = Option.create({name: "Boston, MA"})
o4 = Option.create({name: "Hartford, CT"})
o5 = Option.create({name: "New Haven, CT"})
o6 = Option.create({name: "Pittsburg, PA"})
o7 = Option.create({name: "Plymouth, MA"})
o8 = Option.create({name: "Cambridge, MA"})
o9 = Option.create({name: "Portland, ME"})

s1 = Student.create({first_name: "Anastasia", last_name: "Alt", username: "anastasiaalt", password: "1234"})

i1 = Instructor.create({first_name: "Matt", last_name: "Short", username: "mattshort", password: "1234"})

quest1 = Question.create({ask: "What is the current capital of the United States?", choice_a: o1, choice_b: o2, choice_c: o3, choice_d: a1})
quest2 = Question.create({ask: "Where was the constitution signed?", choice_a: o4, choice_b: o5, choice_c: o6, choice_d: a2})
quest3 = Question.create({ask: "Where did the Pilgrims land?", choice_a: o7, choice_b: o8, choice_c: o9, choice_d: a3})

quiz1 = Quiz.create({assigned: Date.parse("Feb 9, 2016"), instructor: i1, question1: quest1, question2: quest2, question3: quest3})


