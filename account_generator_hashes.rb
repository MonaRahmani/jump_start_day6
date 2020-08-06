# initiate an empty array to store all student information
student_data = []
# counter
count = 1


puts "enter 5 students full name: "

5.times do 
  # emty hash to store students info
  each_studen_hash = {}
  
  print "student number #{count}: "
  student_name = gets.chomp.upcase
  # assign studen name to the key "name"
  each_studen_hash[:name] = student_name
  count += 1

  # generate random student ID numbers from 111111 to 999999
  student_id = rand(111111..999999)
  each_studen_hash[:id] = student_id 

  # assign first initial to a variable
  name_initial = student_name[0]
 
  # get the last name by using split method
  split_fullname = student_name.split
  lastname = split_fullname[1]

  # get the last 3 digits of Ids
  last3_digits = student_id.to_s.split(//).last(3).join 

  # generate emails 
  student_email = "#{name_initial}#{lastname}#{last3_digits}@adadevelopersacademy.org"
  # assign students email to the key email
  each_studen_hash[:email] = student_email.downcase
  
  student_data << each_studen_hash
end


puts
puts "================== Student Information ======================"
# printout each student info
student_data.each do |student|
  student.each do |key, value|
    puts "Name: #{student[:name]}"
    puts "ID: #{student[:id]}"
    puts "email: #{student[:email]}"
    puts "======================================================="
  end
end

