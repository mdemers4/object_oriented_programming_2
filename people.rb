class Person

	def initialize(name)
		@name = name
	end

	def greeting
		puts "Hi, my name is #{@name}"
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


instructor = Instructor.new("Chris")
instructor.greeting
instructor.teach


student = Student.new("Christina")
student.greeting
student.learn
#student.teach
=begin

The student.teach doesnt work because there is no teach instant method that
exists within the student class or the person class which it extends from 

=end