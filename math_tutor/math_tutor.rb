# Simple program to practice arithmetics skills
# Math Tutor
# Jean F. Dorancy
# 12/03/2015

require_relative "choices.rb"
load "menu.rb"
load "exercices.rb"
load "question.rb"

#main
menu = Menu.new
while true
  menu.print_header
  menu.print_choices
  print "Please enter your choice: "
  menu.choice = gets.to_i
  
  if menu.exit == menu.choice
    exit
  end
  exo = Exercices.new(menu.choice)
  print "Number of questions: "
  nb_of_questions = gets.to_i
  exo.add_questions(nb_of_questions)
  exo.scores
  exo.review_all
end