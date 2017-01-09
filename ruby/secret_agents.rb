# Encryption Method: 
def encrypt(string)
  string.length
  index = 0
  new_string = ""
  while index < string.length
    new_string += string[index].next
    index += 1
  end
  puts new_string
end

encrypt("abc")

































=begin
This is my old work before the repeat:

def encrypt (string)
 string_length = string.length
 index = 0
 new_string = ""
  while index < string_length
    if string[index] == "z"
        new_string += "a"
    else            
        new_string += string[index].next
    end  
     index += 1
  end   
    puts new_string
end


def decrypt (string)
alphabet = "abcdefghijklmnopqrstuvwxyz"
 string_length = string.length
 index = 0
 new_string = ""
  while index < string_length
      i = alphabet.index(string[index]) 
      new_string += alphabet[i-1]
      index += 1
  end   
    puts new_string
end


#Driver Code

#this worked as the encrypt method because it used the last command opposed to the first
#decrypt(encrypt("swordfish"))

#ask user if they would like to decrypt or encrypt 
puts "Would you like to decrypt or encrypt a password?"
preference = gets.chomp

#ask user for their password
puts "What is your password?"
password = gets.chomp

	if preference == "decrypt"
		puts decrypt(password)
	else
		puts encrypt(password)
	end

=end
