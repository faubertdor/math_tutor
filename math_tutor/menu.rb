# This class displays and select menu choices
# menu, header
# Jean F. Dorancy
# 12/03/2015

class Menu
  attr_reader :choice, :subject
  
  include Choices
  
  def print_header
    puts "\n*** This program helps you test your arithmetic skills *** \n"\
         "                     Math Tutor Program                      \n"\
         "                      Jean F. Dorancy                        \n"
  end
  
  def print_choices
    subject_menu
    puts " 7: Addition and Substraction                               \n"\
         " 8: Addition, Substraction and Multiplication               \n"\
         " 9: Addition, Substraction, Multiplication and Int Division \n"\
         "10: All operators                                           \n"\
         "11: A random single operator                                \n"\
         "12: Review exercices                                        \n"\
         "13: Exit the program                                        \n\n"
  end
  
  def subject_menu
    puts "\n 1: Addition only                                         \n"\
         " 2: Substraction only                                       \n"\
         " 3: Multiplication only                                     \n"\
         " 4: Integer Division only                                   \n"\
         " 5: Real Division only                                      \n"\
         " 6: Modulo only                                             \n"
  end
  
  def choice=(val)
     @choice = val
     while choice < ADD || choice > EXIT
       print "Enter a choice between #{ADD} and #{EXIT}: "
       @choice = gets.to_i
     end
  end
  
  def subject=(subject)
    @subject = subject
    while subject < ADD || subject > MOD
      print "Enter a choice between #{ADD} and #{MOD}: "
      @subject = gets.to_i
    end
  end
  
  def exercices_book_menu
    puts "\n 1: Review by subject\n"\
         " 2: Review an exercice (If you remember the number)\n\n"\
  end
  
  def review
    REVIEW
  end
  
  def exit
    EXIT
  end
end