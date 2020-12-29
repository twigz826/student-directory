def interactive_menu
  students = []
  loop do
    #1. Print the menu
    puts "Enter 1 to input students"
    puts "Enter 2 to show the students"
    puts "Enter 9 to exit"
    #2. Read the input and save it in a variable
    selection = gets.chomp
    #3. Do what the user has asked.
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit
    else
      puts "Answer invalid, please try again"
    end
  end
end

def input_students
  puts "Please enter the name of the students."
  puts "To finish, please hit return twice."
  #Create an empty array
  students = []
  #Get the first name
  name = gets.chomp
  #While the name is not empty, repeat this code.
  while !name.empty? do
    #Add student to the hash array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    #Get another name from the user
    name = gets.chomp
  end
  #Return the array of students
  students
end
# students = [
#   {name: "Dr. Hannibal Lecter", cohort: :november},
#   {name: "Darth Vader", cohort: :november},
#   {name: "Nurse Ratched", cohort: :november},
#   {name: "Michael Corleone", cohort: :november},
#   {name: "Alex DeLarge", cohort: :november},
#   {name: "The Wicked Witch of the West", cohort: :november},
#   {name: "Terminator", cohort: :november},
#   {name: "Freddy Krueger", cohort: :november},
#   {name: "The Joker", cohort: :november},
#   {name: "Joffrey Baratheon", cohort: :november},
#   {name: "Norman Bates", cohort: :november}
# ]

#Print header
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

#Print the names
def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

#Print footer
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

#Finally, we call the methods.
# students = input_students
# print_header
# print(students)
# print_footer(students)
interactive_menu
