
5.times do 
  # puts (111111..999999).to_a.sort{ rand() - 0.5 }[0..x] 
  student_id = (111111..999999).to_a.sort{ rand() - 0.5 }[111111..999999] 
  puts student_id
end

65

# id = (0..50).to_a.sort{ rand() - 0.5 }[0..50]
# puts id