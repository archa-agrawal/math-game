class Turn
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def play
    puts "-- NEW TURN --"
    self.playerTurn(@player1)
    puts "#{@player1.prettyScore} vs #{@player2.prettyScore}"
    if @player1.score == @player1.min_score
      return
    end
    self.playerTurn(@player2)
    puts "#{@player1.prettyScore} vs #{@player2.prettyScore}"
  end

  def playerTurn(player)
    first_number = rand(1..20)
    second_number = rand(1..20)
    puts "#{player.name}: What does #{first_number} plus #{second_number} equal?"
    sum = gets.chomp.to_i
    
    if first_number + second_number == sum
      puts "#{player.name}: Yes! You are correct"
      player.updateScore(0)
    else
      puts "#{player.name}: Seriously? No!"
      player.updateScore(-1)
    end
  end
end
