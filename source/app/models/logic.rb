class Logic

  attr_reader :user1, :user2, :win_token, :lose_token

  def initialize(user1, user2, win_token, lose_token)
    @user1 = user1
    @user2 = user2
    @win_token = win_token
    @lose_token = lose_token
  end

  def run
    if (win_token == "rock" && lose_token == "paper") || (win_token == "paper" && lose_token == "scissors") || (win_token == "scissors" && lose_token == "rock")
      user2
    elsif (win_token == "paper" && lose_token == "rock") || (win_token == "scissors" && lose_token == "paper") || (win_token == "rock" && lose_token == "scissors")
      user1
    else
      puts "tie"
    end
  end

end