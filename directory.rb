# lets put all the students into an array
 	MONTHS = %w(January Febuary March April May June July August September October November December) 

def input_students
	@students = []
	more_student = "yes"
	until more_student == "no" 
		puts "Please use the following instructions"
		puts "Please enter the name of the new Student:"
		name = get_information
			name = "I see you must be a secret agent" if name == ""
		puts "Please enter cohort:"
		cohort = get_cohort
			cohort = "I already know where you live" if cohort == ""
		puts "Please enter the student's age:"
		age = get_information
			age = "You must be embarassed of your wrinkly butt" if age == ""
		puts "Please enter the student's country of origin:"
		country = get_information
			country = "why do you never take me anywhere nice?" if country == ""
		puts "Do you want to enter another student to the directory? yes or no"
		more_student = get_information
		add_student(name,age,cohort,country)
	end
	@students
end

def get_cohort
	info_given = gets.chomp
	until MONTHS.include? info_given.downcase.capitalize
		puts "sorry that month doest exist, please enter it again"
		info_given = gets.chomp
	end
	info_given	
end

def get_information
	entered_value = gets.chomp
	puts "You entered #{entered_value}, are you ok with that? Y or N"
	ya_or_nay = gets.chomp
	until ya_or_nay.downcase.start_with?("y")
		puts "well enter it again then"
		entered_value = gets.chomp
		puts "You entered #{entered_value}, are you ok with that? Y or N"
		ya_or_nay = gets.chomp
	end
	entered_value
end
	

def add_student(name, age, cohort, country)
		@students << {:name => name, :cohort => cohort, :age => age, :country => country}
		puts "Now we have #{@students.length} students"
end

def print_header
	puts "The students of Makers Academy".center(70, '******')
	puts "______________"
end

def print_names(students)
	n = students.length
	counter = 0
	while counter < n
		student = students[counter]
		puts "#{counter + 1}. #{student[:name]} | #{student[:cohort]} | #{student[:age]} | #{student[:country]}".center(70, '******')
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







