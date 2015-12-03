# Simple program to practice arithmetics skills
# Math Tutor
# Jean F. Dorancy
# 12/02/2015

require_relative "choices.rb"
load "menu.rb"
load "exercices.rb"
load "question.rb"

#main
menu = Menu.new
menu.print_header
menu.print_choices
print "Please enter your choice: "
menu.choice = gets.to_i
exo = Exercices.new(menu.choice)
print "Number of questions: "
exo.nb_of_questions = gets.to_i
exo.questions(Question.new)
