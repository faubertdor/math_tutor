# This class manages all exercices 
# exercices, subjects
# Jean F. Dorancy
# 12/05/2015

class ExercicesBook
  attr_accessor :exercices
  attr_reader :review_choice
  REVIEW_BY_SUBJECT = 1
  REVIEW_BY_NUMBER = 2
  DELETE = 3
  GO_BACK = 4 # I keep exit option as the last in the menu
  
  include Choices
  
  def initialize
    self.exercices = []
  end
  
  def review_choice=(choice)
    @review_choice = choice
    while review_choice < REVIEW_BY_SUBJECT || review_choice > GO_BACK
      print "Please enter a choice between #{REVIEW_BY_SUBJECT} and #{GO_BACK}: "
      @review_choice = gets.to_i
    end
  end
  
  def count
    exercices.length
  end
  
  def is_number_valid?(number)
    is_valid = exercices.find {|x| x.number == number}
    if is_valid
      return true
    else
      return false
    end
  end
    
  def review(number)
    if count != 0
     while !is_number_valid?(number)
      puts "Please enter a valid exercice number:"
      number = gets.to_i
     end
      exercices[number - 1].print_exercice
      return exercices[number - 1]
    else
      puts "\n\nThere are no completed exercices yet. \n"
    end
  end
  
  def review_by_subject(subject)
    exo = exercices.find_all {|x| x.subject == subject}
    if exo.length != 0
      exo.each {|e| e.print_exercice}
    else
      puts "\n\nThere are no exercices yet on this subject. "\
           "Please complete one first then you may review it :).\n"
    end
  end
  
  def print_exercices
    if count != 0
       exercices.each {|e| e.print_summary}
     else
       puts "\n\nThere are no completed exercices yet. \n"
    end
  end
  
  def delete(number)
    exercice = review(number)
    exercice.print_summary
    print "Are you sure that you want to delete it (y/n)? "
    del_confim = gets.chomp
    if yes_or_no(del_confim)
      exercices.delete(exercice)
      puts "Exercice: #{number} deleted."
    end
  end
end