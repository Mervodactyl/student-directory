#lets put all the students into an array
students = [
{:name => "Javier Silverio", :cohort =>  :August],
{:name => "Elliot Lewis", :cohort =>  :August],
{:name => "Ben Tillett", :cohort =>  :August],
{:name => "Vincent Koch", :cohort =>  :August],
{:name => "Michelle Ballard", :cohort =>  :August],
{:name => "Nick Roberts", :cohort =>  :August],
{:name => "Tatiana Soukiassian", :cohort =>  :August],
{:name => "Mervé Silk", :cohort =>  :August],
{:name => "Albert Vallverdu", :cohort =>  :August],
{:name => "Lovis Schultze", :cohort =>  :August],
{:name => "Henry Stanley", :cohort =>  :August],
{:name => "Spike Lindsey", :cohort =>  :August],
{:name => "Ruth Earle", :cohort =>  :August],
{:name => "Andy Gates", :cohort =>  :August],
{:name => "Faisal Aydarus", :cohort =>  :August],
{:name => "Ethel Ng", :cohort =>  :August],
{:name => "Kevin Daniells", :cohort =>  :August],
{:name => "Maya Driver", :cohort =>  :August],
{:name => "Leopold Kwok", :cohort =>  :August],
{:name => "James McNeil", :cohort =>  :August],
{:name => "Jerome Pratt", :cohort =>  :August],
{:name => "David Wickes", :cohort =>  :August],
{:name => "Chris Oatley", :cohort =>  :August],
{:name => "Marc Singh", :cohort =>  :August],
]

def print_header
	puts "The students of Makers Academy"
	puts "______________"
end

def print(students)
	names.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(names)
	puts "Overall, we have #{student_length} great students"
end

#nothing happens until we call the methods
print_header
print (students)
print_footer