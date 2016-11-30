def calculator(n, s, i)
  if s == "+"
    p n + i 
  elsif s == "-"
    p n - i 
  elsif s == "*"
    p n * i 
  elsif s == "/"
    p n / i
  else
    p "error (try putting a space between your values)"
  end
end

#calculator(4, '+', 5)

calc_stored = []

puts "What calculation would you like to perform?"

loop do
user_input = gets.chomp
  input_separated = user_input.split
  n = input_separated[0].to_i
  s = input_separated[1].to_s
  i = input_separated[2].to_i
  answer = calculator(n,s,i)
  puts answer
  break if user_input == "done"
  calc_stored << {user_input: user_input, answer: answer}
end 
puts "Calculations performed:"
calc_stored.each {|n| puts "#{n[:user_input]} = #{n[:answer]}"}

p calc_stored

#not sure why the info is showing up double? 
# tried to fix the issue of needing a space between the valies in the user input... tried split('') but then it didnt work with spaces between the values

