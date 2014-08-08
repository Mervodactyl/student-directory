# lets put all the students into an array
 	MONTHS = %w(January Febuary March April May June July August September October November December) 
@students = []

def input_students
	@students = []
	more_student = "Y"
	until more_student == "N" 
		puts "Please use the following instructions"
		puts "Please enter the name of the new Student:"
		name = gets.chomp
			name = "I see you must be a secret agent" if name == ""
		puts "Please enter cohort:"
		cohort = gets.chomp
			cohort = "I already know where you live" if cohort == ""
		puts "Please enter the student's age:"
		age = gets.chomp
			age = "You must be embarassed of your wrinkly butt" if age == ""
		puts "Please enter the student's country of origin:"
		country = gets.chomp
			country = "why do you never take me anywhere nice?" if country == ""
		puts "Do you want to enter another student to the directory? Y or N"
		more_student = gets.chomp.capitalize
		add_student(name, age, cohort, country)
	end
	@students
end

def add_student(name, age, cohort, country)
		@students << {:name => name, :cohort => cohort, :age => age, :country => country}
		puts "Now we have #{@students.length} student#{'s' if @students.length > 1}"
end

def print_header
	puts "The students of Makers Academy".center(70, '******')
	puts "______________"
end

def cohorts(student)
	student.map {|mapitem| mapitem[:cohort]}.uniq
end

def print_cohort(student)
	cohorts.downcase.each_with_index do |cohort, index|
		puts "cohort #{index + 1}. #{cohort}"
		student.select {x | x[:cohort] == cohort}.each_with_index do |student, i|
			puts "#{i + 1}. This is #{student[:name]}, their age is #{age [:age]}, their cohort is #{cohort [:cohort]} and they were born in #{country[:country]}."
		end
	end
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
	puts "Now we have #{@students.length} great student#{'s' if @students.length > 1}".center(70, '******')
end


# nothing happens until we call the methods
students = input_students
print_header
print_names (@students)
print_footer (@students)







