# Chapter 4 about modules and program organization
# Combining method_missing and super
# Jean F. Dorancy
# Last modified: 11-19-2015

class Person
    PEOPLE = []
    attr_reader :name, :friends, :hobbies
    def initialize(name)
      @name = name
      @friends = []
      @hobbies = []
      PEOPLE << self
    end
    def has_friend(new_friend)
        @friends << new_friend
    end
    def has_hobby(new_hobby)
      @hobby << new_hobby
    end
    def self.method_missing(m, *args)
      method = m.to_s
      if method.start_with?("all_with_")
        attr = method[9..-1]
        if self.public_method_defined(attr)
          PEOPLE.find_all do |person|
            person.send(attr).include?(args[0])
          end
        else
          raise ArgumentError, "Can't find #{attr}"
        end
      else
        super
      end
    end
end

#Main code
p = Person.new("Paul")
j = Person.new("Jean")
m = Person.new("Marie")
r = Person.new("Ricardo")
p.has_friend(j)
p.has_friend(m)
j.has_friend(p)
m.has_friend(p)
r.has_friend(p)
r.has_friend(j)
r.has_friend(m)
j.has_hobby("TV Show Scandal!")
p.has_hobby("Programming")
