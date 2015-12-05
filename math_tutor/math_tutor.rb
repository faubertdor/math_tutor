# Simple program to practice arithmetics skills
# Math Tutor
# Jean F. Dorancy
# 12/03/2015

require_relative "choices.rb"
load "menu.rb"
load "exercices_book.rb"
load "exercices.rb"
load "question.rb"

#main
menu = Menu.new
menu.print_header
exo_book = ExercicesBook.new
counter = 0

while true
  menu.print_choices
  print "Please enter your choice: "
  menu.choice = gets.to_i
  
  case menu.choice
  when menu.exit
    exit
  when menu.review
    if exo_book.count == 0
      puts "Complete an exercice first before you can review ;)."
    else
      menu.exercices_book_menu
      print "Please choose what to review: "
      choice = gets.to_i
      case choice
      when ExercicesBook::REVIEW_BY_NUMBER
        print "What number do you want to review? "
        number = gets.to_i
        exo_book.review(number)
      when ExercicesBook::REVIEW_BY_SUBJECT
        menu.subject_menu
        print "Please choose a subject: "
        subject = gets.to_i
        exo_book.review_by_subject(subject)
      end
    end
  else
    exo = Exercices.new(menu.choice, counter += 1)
    print "Number of questions: "
    nb_of_questions = gets.to_i
    exo.solve(nb_of_questions)
    exo_book.exercices << exo
  end
end