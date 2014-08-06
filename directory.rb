# lets put all the students into an array

def input_students
	@students = []
	more_student = "yes"
	until more_student == "no"
		puts "Please use the following instructions"
		puts "Please enter the name of the new Student:"
		name = gets.chomp
		puts "Please enter the student's age:"
		age = gets.chomp
		puts "Please enter the student's country of origin:"
		country = gets.chomp
		puts "Do you want to enter another student to the directory? yes or no"
		more_student = gets.chomp
		add_student(name,age,country)
	end
	@students
end
	

def add_student(name, age, country)
		@students << {:name => name, :cohort => :August, :age => age, :country => country}
		puts "Now we have #{@students.length} students"
end

def print_header
	puts "The students of Makers Academy"
	puts "______________"
end

def print_names(students)
	n = students.length
	counter = 0
	while counter < n
		student = students[counter]
		puts "#{counter + 1} #{student[:name]} #{student[:cohort]} cohort #{student[:age]} #{student[:country]}"
		counter += 1
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

# nothing happens until we call the methods
students = input_students
print_header
print_names (students)
print_footer (students)







