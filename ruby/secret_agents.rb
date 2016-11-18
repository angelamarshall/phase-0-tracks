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

encrypt("abcde")

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

decrypt("abc")