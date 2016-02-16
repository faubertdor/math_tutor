# This module is resposible for the constants used
# operations constants
# Jean F. Dorancy
# 12/04/2015

module Choices
  GO_BACK = 0
  ADD = 1
  SUB = 2
  MUL = 3
  INT_DIV = 4
  DIV = 5
  MOD = 6
  A_S = 7
  A_S_M = 8
  A_S_M_I = 9
  ALL = 10
  RANDOM = 11
  REVIEW = 12
  EXIT = 13
  
  def constant_to_operator(operator)
    case operator
    when ADD
      return "+"
    when SUB
      return "-"
    when MUL
      return "x"
    when INT_DIV
      return "Int Div"
    when DIV
      return "/"
    when MOD
      return "Mod"
    else
      return "No operator found!"
    end
  end
  
  def constant_to_string(subject)
    case subject
    when ADD
      return "Addition"
    when SUB
      return "Substraction"
    when MUL
      return "Multiplication"
    when INT_DIV
      return "Integer Division"
    when DIV
      return "Real Division"
    when MOD
      return "Modulo"
    when A_S
      return "Addition and Substraction"
    when A_S_M
      return "Addition, Substraction and Multiplication"
    when A_S_M_I
      return "Addition, Substraction,\nMultiplication and Integer Division"
    when ALL
      return "Addition, Substraction,\nMultiplication, Integer and Real Division"
    when RANDOM
      return "Euhhh... That was a single random operator!"
    else
      return "Not found!"
    end
  end
  
  def add_sub
    rand(ADD..SUB)
  end
  
  def add_sub_mul
    rand(ADD..MUL)
  end
  
  def add_sub_mul_int
    rand (ADD..INT_DIV)
  end
  
  def all_operators
    rand(ADD..DIV)
  end
    
  def clear_scr
    print "Press ENTER to continue."
    gets
    system "clear"
  end
  
  def yes_or_no(choice)
    y = 'y'
    yes = 'yes'
    n = 'n'
    no = 'no'
    while (choice != y && choice != y.upcase && choice != yes && choice != yes.upcase &&
           choice != n && choice != n.upcase && choice != no && choice != no.upcase)
        print "Please enter a valid choice (y/n): "
        choice = gets.chomp
    end
    case choice
    when y, y.upcase, yes, yes.upcase
      return true
    when n, n.upcase, no, no.upcase
      return false
    end
  end
end