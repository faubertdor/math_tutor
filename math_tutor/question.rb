# This class manage each question
# question, answer, grade
# Jean F. Dorancy
# 12/04/2015

class Question
  attr_accessor :number, :operator, :operand1, :operand2, :answer, :score, :credit, :your_answers
  
  include Choices
  
  def initialize
    self.operand1 = rand(99)
    self.operand2 = rand(99)
    self.your_answers = {}
  end
  
  def display
    #We print the note one time and don't want to print it during the review
    puts "NOTE: Use two decimal places for Real Division\n\n" if self.operator == DIV && self.answer == nil
    puts (operand1 < 10? "    " : "   ") + operand1.to_s
    puts operator_to_string(self.operator) + (operand2 < 10? "   " : "  ") + operand2.to_s
    puts "------"
    print "   " if your_answers[:first] == nil || your_answers[:second] == nil
  end
  
  def correct_answer
    case self.operator
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
    self.operator = operator

    display
    correct_answer
    self.your_answers[:first] = gets.chomp
    if self.your_answers[:first].to_f != answer
      puts "\nSorry wrong answer! Try a second time.\n\n"
      display
      self.your_answers[:second] = gets.chomp
      if self.your_answers[:second].to_f == answer
        puts "\nGood job this time!\n\n"
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
  
  def review
      self.display
      puts "Correct answer: #{answer}"
      print "Your answer"
      if answer == your_answers[:first]
        print ": #{your_answers[:first]}"
      else
        print "s: #{your_answers[:first]}, #{your_answers[:second]}\n"
      end
  end
end