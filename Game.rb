require './Player.rb'
require './Turn.rb'

class Game
  def initialize
    @player1 = Player.new("player 1");
    @player2 = Player.new("player 2");
    @turn = Turn.new(@player1, @player2);
  end
  
  def play
    while @player1.score > @player1.min_score && @player2.score > @player2.min_score
      @turn.play
    end
    if(@player1.score > 0)
      winner = @player1
    else
      winner = @player2
    end
    self.printResult(winner)
  end

  def printResult(winner)
    puts "#{winner.name} wins with a score of #{winner.prettyScore}"
    puts "-- Game Over --"
    puts "Good Bye!"
  end
end


