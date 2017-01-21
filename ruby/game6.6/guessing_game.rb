class GuessingGame
  attr_reader :guesses, :progress
 # attr_accessor :answer

  def initialize(word)
    @guesses = word.length
    @answer = word.downcase
    @progress = "_" * word.length
  end

  def progress
    @progress
  end
 
#  def separate_word
#    @answer.split('')
#  end
 
  def guess_letters(letter)
   until @guesses == 0 
      if @answer.include?(letter)
        if finished?
          puts celebrate
        else
          puts "Nice work, you guessed a correct letter. Guess again."
          letter = gets.chomp
          keep_correct_letter(letter)
          puts @progress
        end
     else
        puts "Wrong! Guess again."
        letter = gets.chomp
        puts @progress
      end 
    @guesses -= 1
    end
  end 
   
 #  def show_progress(letter)
 #    if @answer.include?(letter)
 #      answer_array = @answer.split('')
 #      answer_array
 #      @answer.tr(@progress, letter)
 #    else
 #      @progress
 #    end
 #  end
 
  def keep_correct_letter(guessing_input)
    guessing_input_index = @answer.index(guessing_input)
    @progress[guessing_input_index] = guessing_input
  end

# @answer.tr(@progress, letter)
 
=begin
  def guessing_answer(guessed_word, answer)
    loop do  
      until @guesses == 0
        if guessed_word != answer
           puts "That's not it, try again."
           answer = gets.chomp
        elsif guessed_word == answer 
           puts celebrate
        else
           puts taunt
        end
      @guesses -= 1
      end
    break
    end
  end
=end
    
  def finished?
    @answer == @progress 
  end 

  def celebrate
    puts "Congrats! You won!!!!!"
  end

  def taunt
    puts "Ugh! You did not get it right..."
  end

end

puts "Welcome to the Guessing Game!"

puts "Hello user 1, what is your word?"
word = gets.chomp
game = GuessingGame.new(word)

puts "Hello user 2, what is your letter guess?"
user_2_guess = gets.chomp

#game.progress
#game.guess_letters(user_2_guess)
#game.progress
game.keep_correct_letter(user_2_guess)
game.guess_letters(user_2_guess)





































=begin
class GuessingGame
  # attr_reader :progress :guesses

  def initialize(word)
    @progress = "_" * word.length
    @guesses = word.length
    @_answer = word.downcase
  end

  def guess(guessing_input)
    if @guesses < 1
      if finished?
        celebrate
      else
        p "You loose!"
      end
    else
      @guesses -= 1

      guessing_input = guessing_input[0]
      guessing_input.downcase!

      if @_answer.include?(guessing_input)
        keep_correct_letter(guessing_input)
        if finished?
          celebrate
        else
          puts "Good job! That was a correct guess. You progress is: #{@progress}. You have #{@guesses} guesses left."
        end
      else
        puts "Your guess was not correct. You have #{@guesses} left."
      end
    end
  end

  private

  def keep_correct_letter(guessing_input)
    guessing_input_index = @_answer.index(guessing_input)
 #		while @_answer.include?(guessing_input)
    @progress[guessing_input_index] = guessing_input
  end

  def finished?
    @progress == @_answer
  end

  def celebrate
    p "Woah! You got it right. Nice work!"
  end
end

game = GuessingGame.new("Map")
=end
