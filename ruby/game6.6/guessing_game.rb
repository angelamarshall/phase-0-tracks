class GuessingGame
  attr_reader :guesses, :progress

  def initialize(word)
    @guesses = word.length
    @answer = word.downcase
    @progress = "_" * word.length
  end
 
  def guess_letters(letter)
    until @guesses == -1  
      if @answer.include?(letter)
        keep_correct_letter(letter)
         if finished?
            celebrate
         else
           if @guesses == 0 
            return "Nice! That was a correct guess. You have #{@guesses} guesses left. You guessed #{@progress}, but the answer was #{@answer}."
            else
            return "Nice! That was a correct guess. You have #{@guesses} guesses left. Your progress so far is #{@progress}."
            letter = gets.chomp
            end
         end
      else
        if @guesses == 0 
          return "Your guess was not correct. You have #{@guesses} guesses left. The answer was #{@answer}."
        else
          return "Your guess was not correct. You have #{@guesses} left."
          letter = gets.chomp
        end
      end
    @guesses -= 1 
    end
  end
  
def correct_guess
    if finished?
      celebrate
    else
      taunt
    end
end
 
  def keep_correct_letter(input)
    input_index = @answer.index(input)
    @progress[input_index] = input
  end
    
  def finished?
    @answer == @progress 
  end 

  def celebrate
    "Congrats! You won!!!!!"
  end

  def taunt
    "YOU LOSE!"
  end
end

#puts "Welcome to the Guessing Game!"

#puts "Hello user 1, what is your word?"
#word = gets.chomp
#game = GuessingGame.new(word)

#puts "Hello user 2, what is your letter guess?"
#user_2_guess = gets.chomp

#game.guess_letters(user_2_guess)
#game.correct_guess
