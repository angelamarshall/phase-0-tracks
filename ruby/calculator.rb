def calculate(i,s,ii)
integer1 = i.to_i
string = s.to_s
integer2 = ii.to_i
  if string == '+'
    integer1 + integer2
  elsif string == '-'
    integer1 - integer2
  elsif string == '*'
    integer1 * integer2
  elsif s == '/'
    integer1 / integer2
  else
    puts "Something went wrong. Please try again."
  end
end

#puts calculate(4, "+", 5)
#puts calculate(4, "-", 3)
#puts calculate(5, "/" , 5)
#puts calculate(5, "*", 5)

stored_calculations = []

puts "What calculation would you like to perform? (please put a space between each number and symbol) Reply with 'done' when you are finished."
loop do
calculation = gets.chomp 
  if calculation == "done"
    break
  elsif 
    calc = calculation.split(' ')
    int1 = calc[0].to_i
    str = calc[1].to_s
    int3 = calc[2].to_i 
    p calculate(int1, str, int3)
    stored_calculations << {user_input: calculation, answer: calculate(int1, str, int3)}
  end
end

puts "Calculations performed:"
stored_calculations.each {|n| puts "#{n[:user_input]} = #{n[:answer]}"}

# p stored_calculations


























=begin
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
=end
