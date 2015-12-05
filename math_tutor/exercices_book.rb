# This class manages all exercices 
# exercices, subjects
# Jean F. Dorancy
# 12/05/2015

class ExercicesBook
  attr_accessor :exercices
  REVIEW_BY_SUBJECT = 1
  REVIEW_BY_NUMBER = 2
  
  include Choices
  
  def initialize
    self.exercices = []
  end
  
  def count
    exercices.length
  end
  
  def review(number)
    while number <= 0 || number > exercices.length
        puts "Please enter a number between 1 and #{exercices.length}."
        print "Number: "
        number = gets.to_i
    end
   exercices[number - 1].print_exercice
  end
  
  def review_by_subject(subject)
    exo = exercices.find_all {|x| x.subject == subject}
    if exo.length != 0
      exo.each {|e| e.print_exercice}
    else
      puts "\n\nThere are no exercices yet on this subject."\
           "Please complete one first then you may review it :).\n"
    end
  end
end