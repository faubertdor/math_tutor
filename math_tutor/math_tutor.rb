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
  when Menu::EXIT
    print "Are you sure you want to exit? "
    exit_program = gets.chomp
    if menu.yes_or_no(exit_program)
      exit
    end
  when Menu::REVIEW
    if exo_book.count == 0
      puts "\nPlease complete an exercice before you can review ;)."
    else
      begin
       menu.exercices_book_menu
       print "Please enter your choice: "
       exo_book.review_choice = gets.to_i
       case exo_book.review_choice
       when ExercicesBook::SUMMARY
         exo_book.print_exercices
       when ExercicesBook::REVIEW_BY_NUMBER
         print "What number do you want to review? "
         number = gets.to_i
        exo_book.review(number)
       when ExercicesBook::REVIEW_BY_SUBJECT
         menu.subject_menu
         print "\nPlease choose a subject: "
         subject = gets.to_i
         exo_book.review_by_subject(subject)
       when ExercicesBook::DELETE
         print "\nWhat number do you want to delete? "
         nb_to_del = gets.to_i
         exo_book.delete(nb_to_del)
       when ExercicesBook::GO_BACK
         puts "\n\n"
         menu.clear_scr
       end
      end while exo_book.review_choice != ExercicesBook::GO_BACK
    end
  else
    exo = Exercices.new(menu.choice, counter += 1)
    print "Number of questions: "
    nb_of_questions = gets.to_i
    exo.solve(nb_of_questions)
    exo_book.exercices << exo
  end
end