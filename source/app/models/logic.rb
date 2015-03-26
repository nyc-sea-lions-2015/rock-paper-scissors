class Logic
  def initialize(user1, user2, token1, token2)
    @user1 = user1
    @user2 = user2
    @token1 = token1
    @token2 = token2
  end

  def run
    if (@token1 == "rock" && @token2 == "paper") || (@token1 == "paper" && @token2 == "scissors") || (@token1 == "scissors" && @token2 == "rock")
      @user2
    elsif (@token1 == "paper" && @token2 == "rock") || (@token1 == "scissors" && @token2 == "paper") || (@token1 == "rock" && @token2 == "scissors")
      @user1
    else
      puts "tie"
    end
  end

end