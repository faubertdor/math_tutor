# This class manage each question
# question, answer, grade
# Jean F. Dorancy
# 12/02/2015

class Question
  attr_accessor :operand1, :operand2, :answer, :score
  
  include Choices
  
  def generate_operands
    self.operand1 = rand(99)
    self.operand2 = rand(99)
  end
  
  def display(subject)
    puts "  " + operand1.to_s
    puts operator_to_string(subject) + " " + operand2.to_s
    puts "------"
  end
  
  def correct_answer(subject)
    case subject
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
    when MOD
        self.answer = operand1 % operand2
    end
  end
  
  def solve(subject)
    generate_operands
    display(subject)
    correct_answer(subject)
    user_input = gets.chomp
    if user_input.to_i != answer
      puts "\nSorry wrong answer! Try a second time.\n\n"
      display(subject)
      user_input = gets.chomp
      if user_input.to_i == answer
        puts "Good job this time!"
        self.score = CREDIT / 2
      else
        puts "\nSorry! The answer is #{self.answer}. Better luck next time :)\n\n"
        self.score = 0
      end
    else
      puts "\nWonderful!\n"
      self.score = CREDIT
    end
  end 
end