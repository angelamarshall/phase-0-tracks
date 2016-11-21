# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”

"iNvEsTiGaTiOn".swapcase

# "zom".<???>
# => “zoom”

"zom".insert(1, 'o')

# "enhance".<???>
# => "    enhance    "

"enhance".center(16)

# "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"

"Stop! You’re under arrest!".upcase

# "the usual".<???>
#=> "the usual suspects"

"the usual".ljust(18, ' suspects')

s = "the usual"
s.replace "the usual suspects"

"the usual" + " suspects".to_s 

# " suspects".<???>
# => "the usual suspects"

"suspects".rjust(18, 'the usual ')

s = "suspects"
s.replace "the usual suspects"

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"

"The case of the disappearing last letter".chop

"The case of the disappearing last letter".chop!

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

"The mystery of the missing first letter"[1..-1]

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

"Elementary,    my   dear        Watson!".squeeze

# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

s = "the usual"
s.replace "122"

# "How many times does the letter 'a' appear in this string?".<???>
# => 4

a = "How many times does the letter 'a' appear in this string?"
a.count "a"
