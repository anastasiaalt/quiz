# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Instructor.destroy_all
Cohort.destroy_all
Student.destroy_all
Quiz.destroy_all
Question.destroy_all
Option.destroy_all
Submission.destroy_all


inst1 = Instructor.create({first_name: "Matt", last_name: "Short", username: "mattshort", password: "1234"})

c1 = Cohort.create({name: "Persephone", instructor: inst1})

stud1 = Student.create({first_name: "Anastasia", last_name: "Alt", username: "anastasiaalt", password: "1234", cohort: c1})

quiz1 = Quiz.create({assigned: Date.parse("Feb 9, 2016"), title: "US History", instructor: inst1})

q1 = Question.create({ask: "What is the current capital of the United States?", explanation: "Washington, D.C. became the capital in 1790", quiz: quiz1})
q2 = Question.create({ask: "Where was the constitution signed?", explanation: "The Constitution was written during the Philadelphia Convention—now known as the Constitutional Convention—which convened from May 25 to September 17, 1787. It was signed on September 17, 1787", quiz: quiz1})
q3 = Question.create({ask: "Where did the Pilgrims land?", explanation: "The Pilgrims first landed, however, near the site of modern Provincetown on the tip of Cape Cod in November 1620 before moving to Plymouth", quiz: quiz1})

o1 = Option.create({name: "New York, NY", correct: false, question: q1})
o2 = Option.create({name: "Miami, FL", correct: false, question: q2})
o3 = Option.create({name: "Boston, MA", correct: false, question: q3})
o4 = Option.create({name: "Hartford, CT", correct: false, question: q1})
o5 = Option.create({name: "New Haven, CT", correct: false, question: q2})
o6 = Option.create({name: "Pittsburg, PA", correct: false, question: q3})
o7 = Option.create({name: "Plymouth, MA", correct: false, question: q1})
o8 = Option.create({name: "Cambridge, MA", correct: false, question: q2})
o9 = Option.create({name: "Portland, ME", correct: false, question: q3})
o10 = Option.create({name: "Washington, D.C", correct: false, question: q1})
o11 = Option.create({name: "Philadelphia, PA", correct: false, question: q2})
o12 = Option.create({name: "Provincetown, MA", correct: false, question: q3})

s1 = Submission.create({student: stud1, option: o10})
s2 = Submission.create({student: stud1, option: o11})
s3 = Submission.create({student: stud1, option: o12})



