=begin 


- Object-oriented programming (OOP) is a programming paradigm organized around objects.

- At a high level, OOP is all about being able to structure code so that its functionality can be shared throughout the application.

- If done properly, OOP can lead to very elegantly written programs that have minimal code duplication.

-  In this tutorial, you’ll learn the core concepts of OOP for Ruby, an object-oriented programming language wherein everything is an object. 

-  We will be using Ruby since it's a full object oriented programming language and it's a great language to start learing OOP with.


-  We will cover the following;
	- Four core concept of OOP "A PIE"
	 - Abstraction
	 - Polymorphism
	 - Inheritance
	 - Encapsulation

=end



# ABSTARCTION
# Abstraction is trying to minimize information so that the developer can concentrate on a few ideas at a time


# Data Abstraction using Access Control:
# There are three levels of access control in Ruby (public, private, protected).
# These are the most important implementation of data abstraction in ruby.

#Example Of abstarction

class Person 
	def bio
		puts "My name is Juliana, I'm #{age} years old"
		greet
	end

	private 
	def age 
		20
	end

	protected
	def self.greet
		puts "hello"
	end
end

person = Person.new

Person.greet






# POLYMORPHISM

# Polymorphism is made up of two words Poly which means Many and Morph which means Forms.
# So Polymorphism is a method where one is able to execute the same method using different objects.
# In polymorphism, we can obtain different results using the same method by passing different input objects.

# Example of Polymorphism

class Instructor
	def bio
		puts "I'm an instructor at LHL"
	end

	def shift
		puts "I'm on shift"
	end

end

class Student

	def bio
		puts "I'm a student at LHL"
	end

end

instructor = Instructor.new
student = Student.new

instructor.bio
student.bio





# INHERITANCE
# Inheritance is a property where a child class inherits the properties and methods of a parent class

# Example of Inheritance

class Person

	def bio
		if self.class == Instructor
			puts "I'm an instructor at LHL"
		else
			puts "I'm a student at LHL"
		end
	end
end

class Instructor < Person
end

class Student < Person
end

instructor = Instructor.new
student = Student.new

instructor.bio
student.bio





# Encapsulation
#Encapsulation can be achieved by declaring all the variables in the class as private and writing public methods in the class to set and get the values of variables.

# Example of Encapsulation

class Customer
	attr_accessor :name

	def initialize(id, name, address)
		@id, @name, @address = id, name, address
	end

	def name
		@name.capitalize
	end

	def set_name=(name)
		@name = name
	end

end 

customer = Customer.new(1, "juliana", "Lighthous")

customer.name = "mary"
p customer.name



















