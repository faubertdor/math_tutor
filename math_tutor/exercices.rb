# This class manage the exercices 
# exercices, subjects
# Jean F. Dorancy
# 12/02/2015

class Exercices
    attr_reader :nb_of_questions
    attr_accessor :subject, :nb_correct, :nb_incorrect, :partially_correct, :total_score
    
    include Choices
    
    def initialize(choice)
      self.subject = choice
      self.nb_correct = 0
      self.nb_incorrect = 0
      self.partially_correct = 0
      self.total_score = 0
    end
    
    def nb_of_questions=(val)
      @nb_of_questions = val
      while nb_of_questions < 0
        print "Please enter a positive integer: "
        @nb_of_questions = gets.to_i
      end
    end
    
    def questions(single_question)
      counter = 0
      nb_of_questions.times do
        puts "Question # #{counter += 1}"
        puts "------------"
        case single_question.solve(subject)
        when CREDIT
          self.nb_correct += 1
          self.total_score += CREDIT
        when CREDIT / 2
          self.partially_correct += 1
          self.total_score += CREDIT / 2
        when 0
          self.nb_incorrect += 1
        end
        print "Press ENTER to continue."
        gets
        system("clear")
      end
    end
end