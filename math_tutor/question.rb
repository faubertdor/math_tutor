# This class manage each question
# question, answer, grade
# Jean F. Dorancy
# 12/03/2015

class Question
  attr_accessor :operand1, :operand2, :answer, :score, :credit
  
  include Choices
  
  def generate_operands
    self.operand1 = rand(99)
    self.operand2 = rand(99)
  end
  
  def display(operator)
    puts "NOTE: Use two decimal places for Real Division" if operator == DIV
    puts (operand1 < 10? "    " : "   ") + operand1.to_s
    puts operator_to_string(operator) + (operand2 < 10? "   " : "  ") + operand2.to_s
    puts "------"
    print "   "
  end
  
  def correct_answer(operator)
    case operator
    when ADD
        self.answer = operand1 + operand2
    when SUB
        self.answer = operand1 - operand2
    when MUL
        self.answer = operand1 * operand2
    when INT_DIV
        self.answer = operand1 / operand2
    when DIV
        self.answer = operand1.to_f / operand2
        self.answer *= 1000
        self.answer = answer.to_i / 10
        self.answer /= 100.0
    when MOD
        self.answer = operand1 % operand2
    end
  end
  
  def solve(operator)
    generate_operands
    display(operator)
    correct_answer(operator)
    user_input = gets.chomp
    if user_input.to_f != answer
      puts "\nSorry wrong answer! Try a second time.\n\n"
      display(operator)
      user_input = gets.chomp
      if user_input.to_f == answer
        puts "Good job this time!\n\n"
        self.score = credit / 2
      else
        puts "\nSorry! The answer is #{self.answer}. Better luck next time :)\n\n"
        self.score = 0
      end
    else
      puts "\nWonderful!\n\n"
      self.score = credit
    end
  end 
end