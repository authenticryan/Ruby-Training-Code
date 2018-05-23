3               # everthing is an object. There is no primitive data type
a = 4

unless 3 == 5   # unless is not equal to 
  puts "3 is not equal to 5"
end

until a>=5      # opposite of while. Prints till he given condition becomes true
  puts "print this statement"
  a += 1
end

puts "Print this" if a == 5 and 3 == 3          # modifier form
a *= 2 while a < 100                            # modifier form

if /sera/ === "coursera"                        # tripple equals
  puts "This works as tripple equals accepts regular expressions"
end

# Case statements, 2 flavors 

case            # 1st flavor. more of an if else version
  when a == 160  
    puts "a is equal to 160"
  when 3 == 3    
    puts "3 is equal to 3" 
  else  
    puts "nothing"
end

case a          # 2nd flavor. tripple equals is used
  when 160  then puts "a is equal to 160"
  when 140  then puts "a is equal to 140"
  else  puts "nothing"
end

# for loops is hardly used. each/times is preferred
for i in 0..2
  puts i
end

# using defined funciton to check if a given vairable is defined
# flag = defined?(doc)          returns the thing passed in/ nil