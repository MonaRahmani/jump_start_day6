# An array that will contain student names
names = []
# An array that will store student ID numbers
id = []
# An array that will contain student email addresses
emails = []
# counter
count = 1


puts "enter 5 students full name: "

# asks the user to enter in 5 student names & store those values in the name array
5.times do 
  print "student number #{count}: "
  student_name = gets.chomp.upcase
  names.push(student_name)
  count += 1

  # generate random student ID numbers from 111111 to 999999
  # put these values to the student ID number array
  student_id = rand(111111..999999)
  id.push(student_id)
 
  
  # generate student email addresses in the format: 
  # (first inital)+(last name)+(last 3 digits of student ID number)@adadevelopersacademy.org
  # first initial 
  name_initial = student_name[0]
  
  # get the last name by using split method
  split_fullname = student_name.split
  lastname = split_fullname[1]

  # get the last 3 digits of Ids
  last3_digits = student_id.to_s.split(//).last(3).join 

  # generate emails and push them to the array 
  students_email = "#{student_name[0]}#{lastname}#{last3_digits}@adadevelopersacademy.org"
  emails.push(students_email.downcase)
end

# print out all the student names, ID numbers, and email addresses in parallel.
puts
puts "================== Student Information ======================"
names.count.times do |index|
  printf "%-20s %-2s %-10s\n", names[index], id[index] , emails[index]
end


# Optional Enhancements:
# make sure none of the IDs are duplicates
# account for ID numbers whose last 3 digits are less than 100 (e.g. 111008) because these ID numbers will generate an email address with less than 3 digits at the end without special cases.
# on email generation, account for first names with a space in them
# e.g. if the first name is "Mary Jane", then the first initial should be "MJ" rather than just "M"
# read in the student names from a file instead of the user and make the array size according to the number of names