@students = []

def input_students
  puts "Please enter the name of the students."
  puts "To finish, please hit return twice."
  #Get the first name
  name = gets.chomp
  #While the name is not empty, repeat this code.
  while !name.empty? do
    #Add student to the hash array
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    #Get another name from the user
    name = gets.chomp
  end
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def print_menu
  #1. Print the menu
  puts "Enter 1 to input students"
  puts "Enter 2 to show the students"
  puts "Enter 3 to save the list of students on file"
  puts "Enter 9 to exit"
end

def show_students
  print_header
  print_student_list
  print_footer
end

def save_students
  #Open the file for writing
  file = File.open("students.csv", "w")
  #Iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "3"
    save_students
  when "9"
    exit
  else
    puts "Answer invalid, please try again"
  end
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
def print_student_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

#Print footer
def print_footer
  puts "Overall, we have #{@students.count} great students"
end

#Finally, we call the methods.
# students = input_students
# print_header
# print(students)
# print_footer(students)
interactive_menu
