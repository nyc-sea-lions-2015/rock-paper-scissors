class GameBrain
  WINNER_TABLE = {
    "rock,rock" => ->(throws){ nil },
    "rock,paper" => ->(throws){ [throws.second, throws.first] },
    "rock,scissors" => ->(throws){ [throws.first, throws.second] },

    "paper,rock" => ->(throws){ [throws.second, throws.first] },
    "paper,paper" => ->(throws){ nil },
    "paper,scissors" => ->(throws){ [throws.second, throws.first] },

    "scissors,rock" => ->(throws){ [throws.second, throws.first] },
    "scissors,paper" => ->(throws){ [throws.first, throws.second] },
    "scissors,scissors" => ->(throws){ nil },
  }

  def initialize(throws)
    @throws = throws
  end

  def calculate_winner
    WINNER_TABLE[key].call(@throws)
  end

  private

    def key
      [@throws.first.token.name, @throws.last.token.name].map(&:downcase).join(",")
    end
end
