def calculator(n, s, i)
  if s == "+"
    puts n + i 
  elsif s == "-"
    puts n - i 
  elsif s == "*"
    puts n * i 
  elsif s == "/"
    puts n / i
  else
    puts "error"
  end
end

#calculator(4, '+', 5)

#Driver Code
puts "What calculation would you like to perform?"

loop do
user_input = gets.chomp
  until user_input == "done"
  input_separated = user_input.split #.join(",")
  n = input_separated[0].to_i
  s = input_separated[1].to_s
  i = input_separated[2].to_i
  calculator(n,s,i)
  break
end
end 