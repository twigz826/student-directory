#First, we put all the students into an array.
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]
#Print header
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
#Print the names
def print(names)
  names.each do |name|
    puts name
  end
end
#Print footer
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
#Finally, we call the methods.
print_header
print(students)
print_footer(students)
