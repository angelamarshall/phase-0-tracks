def test_5_3 
  name1 = "RJ"
  name2 = "Angela"
  puts "Inside method"
  yield(name1, name2)
end

test_5_3 { |name1, name2| puts "Outside method, #{name1} and #{name2}."}

greetings = ["hello", "good bye", "hola"]
car_hash = {
  ford:  "focus",
  lexus: "sc400",
  bmw: "450i"
}

greetings.each_with_index do |greet, index|
  puts " Greeting #{index} is #{greet}. "
end

car_hash.each {| car, model| puts " Car #{car} has a model named #{model}."}

greetings.map! do |greet|
  puts greet
  greet +="zzz"
  
end
p greetings

car_hash.map do | car, model| 
  puts " Car #{car} has a model named #{model}."

end

puts "Exercises for arrays.  Create an array of letters, print it and its sorted image"

letters = ["d","c","v","b","y","u","a","e","i","o","u","y"]
p letters
p letters.sort
puts "now deleting the letter i from array"
p letters.delete("i")
p letters
puts "Now only printing letters greater than c"
letters.each {|letter| puts letter if letter > "c"}
puts "Now seeing if array is empty and then emptying array"
p letters.empty? 
p letters
letters.clear
p letters
p letters.empty?

letters = ["d","c","v","b","y","u","a","e","i","o","u","y"]
puts "entering loop to pop and shift letters from letters array"
while letters.count > 0
  puts letters.pop
  puts letters.shift
end
puts "Following is what's left in letters array"
p letters

puts "hash exercises"

car_hash1 = {
  ford:  "focus",
  lexus: "sc400",
  bmw: "450i",
  infiniti: "focus", 
  chevy: "sc400"
}
puts
puts "Original hash #{car_hash1}"
puts "Deleting Ford focus using symbol key :ford"
p car_hash1.delete(:ford)
puts "printing what's left in hash"
puts car_hash1
puts
puts "Deleting every car in hash with value of sc400"

car_hash1.delete_if{|_,val| val == "sc400"}

puts "print what's left in hash"
puts car_hash1
