class Game
  def initialize
    @number = rand(1..100)
    @count = 0
    @win = false
  end

def user_guess
  print 'Please guess a number between 1-100.'
  guess = gets.chomp.to_i
  user_feedback(guess)
end

def user_feedback(guess)
  if guess > @number
    puts 'Sorry too high'
    @count += 1
  elsif guess < @number
    puts 'Sorry too low'
    @count += 1
  else guess == @number
    @win = true
    puts 'Great guess, you got it!!'
  end
end

def start_game
  while @win == false && @count < 5
  user_guess
  if @count == 5
    puts "Sorry but you are out of guesses.  Your random number was #{@number}.  Please try again!"
  end
end
end
end


my_game = Game.new
my_game.start_game
