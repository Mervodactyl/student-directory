#lets put all the students into an array
students = [
["Javier Silverio", :August],
["Elliot Lewis", :August],
["Ben Tillett", :August],
["Vincent Koch", :August],
["Michelle Ballard", :August],
["Nick Roberts", :August],
["Tatiana Soukiassian", :August],
["Mervé Silk", :August],
["Albert Vallverdu", :August],
["Lovis Schultze", :August],
["Henry Stanley", :August],
["Spike Lindsey", :August],
["Ruth Earle", :August],
["Andy Gates", :August],
["Faisal Aydarus", :August],
["Ethel Ng", :August],
["Kevin Daniells", :August],
["Maya Driver", :August],
["Leopold Kwok", :August],
["James McNeil", :August],
["Jerome Pratt", :August],
["David Wickes", :August],
["Chris Oatley", :August],
["Marc Singh", :August],
]

def print_header
	puts "The students of Makers Academy"
	puts "______________"
end

def print(students)
	names.each do |student|
		puts "#{student[0]} (#{student[1]} cohort)"
	end
end

def print_footer(names)
	puts "Overall, we have #{student_length} great students"
end

#nothing happens until we call the methods
print_header
print (students)
print_footer