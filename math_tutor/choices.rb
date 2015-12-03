# This module is resposible for the constants used
# operations constants
# Jean F. Dorancy
# 12/02/2015

module Choices
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
  EXIT = 12
  CREDIT = 100
  
  def operator_to_string(choice)
    case choice
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
end