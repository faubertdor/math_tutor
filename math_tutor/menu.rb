# This class display and select menu choices
# menu, header
# Jean F. Dorancy
# 12/03/2015

class Menu
  attr_reader :choice
  
  include Choices
  
  def print_header
    puts "\n*** This program helps you test your arithmetic skills *** \n"\
         "                     Math Tutor Program                        \n"\
         "                      Jean F. Dorancy                          \n\n"
  end
  
  def print_choices
    puts " 1: Addition only                                           \n"\
         " 2: Substraction only                                       \n"\
         " 3: Multiplication only                                     \n"\
         " 4: Integer Division only                                   \n"\
         " 5: Real Division only                                      \n"\
         " 6: Modulo only                                             \n"\
         " 7: Addition and Substraction                               \n"\
         " 8: Addition, Substraction and Multiplication               \n"\
         " 9: Addition, Substraction, Multiplication and Int Division \n"\
         "10: All operators                                           \n"\
         "11: A random single operator                                \n"\
         "12: Review all the questions                                \n"\
         "13: Exit the program                                        \n\n"\
  end
  
  def choice=(val)
      @choice = val
     while choice <= 0 || choice > 13
       print "Enter a choice between 1 and 12: "
       @choice = gets.to_i
     end
  end
  
  def review
    REVIEW
  end
  
  def exit
    EXIT
  end
end