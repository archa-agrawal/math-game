class Player 
  
  def initialize(name)
    @name = name
    @score = 3
    @max_score = 3
    @min_score = 0
  end

  def updateScore(modifier)
    @score += modifier
    if @score > @max_score
      @score = @max_score
    elsif @score < @min_score
      @score = @min_score
    end
  end

  def prettyScore
    "#{@score}/#{@max_score}"
  end

  def name
    @name
  end

  def score
    @score
  end

  def min_score
    @min_score
  end

end