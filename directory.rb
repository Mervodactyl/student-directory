# lets put all the students into an array

def input_students
	print "Please enter the names of the Students\n"
	print "To finsh, just hit return twice\n"
	# create an empty array
	students = []
	# get the first name
	name = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do 
		# add the student hash to the array
		students << {:name => name, :cohort => :August}
		print "Now we have #{students.length} students\n"
		# get annother name for the user
		name = gets.chomp
	end
	# return the array of students
	students
end

def print_header
	print "The students of Makers Academy\n"
	print "______________\n"
end

def print_names(students)
	n = students.length
	counter = 0
	while counter < n
		student = students[counter]
		print "#{counter + 1} #{student[:name]} (#{student[:cohort]} cohort)\n"
		counter += 1
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students name\n"
end

# nothing happens until we call the methods
students = input_students
print_header
print_names (students)
print_footer (students)
