# This class manages single exercice with its questions
# exercices, subjects, scores
# Jean F. Dorancy
# 12/04/2015

class Exercices
    attr_reader :nb_of_questions
    attr_accessor :subject, :number, :nb_correct, :nb_incorrect, :partially_correct, :total_score, :all_questions
    CREDIT = 100
    SCR_DELIMITER = "-----------------------------------\n\n"
    include Choices
    
    def initialize(subject, number)
      self.subject = subject
      self.number = number
      self.nb_correct = 0
      self.nb_incorrect = 0
      self.partially_correct = 0
      self.total_score = 0
      self.all_questions = []
    end
        
    def nb_of_questions=(val)
      @nb_of_questions = val
      while nb_of_questions < 0
        print "Please enter a positive integer: "
        @nb_of_questions = gets.to_i
      end
    end
    
    def solve(nb_of_questions)
      counter = 0
          
      if subject == RANDOM
        operator = add_sub_mul_int
      else
        operator = subject
      end
      
      self.nb_of_questions = nb_of_questions
      self.nb_of_questions.times do
        single_question = Question.new
        single_question.credit = CREDIT
        case subject
        when A_S
          operator = add_sub
        when A_S_M
          operator = add_sub_mul
        when A_S_M_I
          operator = add_sub_mul_int
        when ALL
          operator = all_operators
        end
        
        puts "\nQuestion # #{single_question.number = counter += 1}/#{nb_of_questions}"
        puts SCR_DELIMITER
        
        case single_question.solve(operator)
        when CREDIT
          self.nb_correct += 1
          self.total_score += CREDIT
        when CREDIT / 2
          self.partially_correct += 1
          self.total_score += CREDIT / 2
        when 0
          self.nb_incorrect += 1
        end
        all_questions << single_question
        clear_scr
      end
        scores
        clear_scr
    end
    
    def review(number)
      while number <= 0 || number > all_questions.length
          print "Please enter a valid question #: "
          number = gets.to_i
      end
      puts "\n\n"
      all_questions[number - 1].review
    end
    
    def review_all
        length = all_questions.length
        puts "Reviewing all #{length} question" + (length > 1? "s.": ".")
        puts SCR_DELIMITER
        for question in all_questions do
            question.review
            puts "\n\n"
        end
        clear_scr
    end

    def scores
      percent = (total_score / (nb_of_questions * CREDIT).to_f) * 100
      percent *= 1000
      percent = percent.to_i / 10
      percent /= 100.0
      puts "Scores Report Card\n" + SCR_DELIMITER
      puts "Total number of question" + (nb_of_questions > 1? "s:":":") + " #{nb_of_questions}\n"\
           "Correct answer" + (nb_correct> 1? "s:":":") + " #{nb_correct}\n"\
           "Incorrect answer" + (nb_incorrect> 1? "s:":":") + " #{nb_incorrect}\n"\
           "Partially correct answer" + (partially_correct > 1? "s:":":") + " #{partially_correct}\n"\
           "Total score: #{total_score}\n"\
           "Your percentage is: #{percent}%\n\n"
    end
    
    def print_exercice
        print_summary
        puts "\n\n"
        review_all
    end
    
    def print_summary
        puts "Exercice #{number}: " + constant_to_string(self.subject) + "\n\n"
        scores
    end
end