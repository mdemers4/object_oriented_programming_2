class Person
	def initialize(name)
		@name = name
	end
end


class Student < Person
	def learn
		puts "I get it!"
	end
end


class Instructor < Person
	def teach
		puts "everything in ruby is an Object"
	end
end
