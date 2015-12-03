# This class display and select menu choices
# menu, header
# Jean F. Dorancy
# 12/02/2015

class Menu
  attr_reader :choice
  
  def print_header
    puts "\n\n*** This program helps you test your arithmetic skills *** \n"\
         "                     Math Tutor Program                        \n"\
         "                      Jean F. Dorancy                          \n\n"
  end
  
  def print_choices
    puts "\t  1: Addition only                                           \n"\
         "\t  2: Substraction only                                       \n"\
         "\t  3: Multiplication only                                     \n"\
         "\t  4: Integer Division only                                   \n"\
         "\t  5: Real Division only                                      \n"\
         "\t  6: Modulo only                                             \n"\
         "\t  7: Addition and Substraction                               \n"\
         "\t  8: Addition, Substraction and Multiplication               \n"\
         "\t  9: Addition, Substraction, Multiplication and Int Division \n"\
         "\t 10: All operators                                           \n"\
         "\t 11: A random single operator                                \n"\
         "\t 12: Exit the program                                        \n\n"\
  end
  
  def choice=(val)
      @choice = val
     while choice <= 0 || choice >= 12
       print "Enter a choice between 1 and 12: "
       @choice = gets.to_i
     end
  end
end