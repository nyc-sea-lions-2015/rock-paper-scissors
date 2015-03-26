class Token < ActiveRecord::Base
  BEATS = {
    "rock"=> "scissors",
    "scissors" => "paper",
    "paper" => "rock",
  }
  def beats(loser)
    BEATS[name] == loser.name
  end
end

