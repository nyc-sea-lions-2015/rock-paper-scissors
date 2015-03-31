class GameBrain
  WINNER_TABLE = {
    "rock,rock" => ->(throws){ [nil, nil] },
    "rock,paper" => ->(throws){ [throws.second, throws.first] },
    "rock,scissors" => ->(throws){ [throws.first, throws.second] },

    "paper,rock" => ->(throws){ [throws.second, throws.first] },
    "paper,paper" => ->(throws){ [nil, nil] },
    "paper,scissors" => ->(throws){ [throws.second, throws.first] },

    "scissors,rock" => ->(throws){ [throws.second, throws.first] },
    "scissors,paper" => ->(throws){ [throws.first, throws.second] },
    "scissors,scissors" => ->(throws){ [nil, nil] },
  }

  def initialize(throws)
    @throws = throws
  end

  def winner_and_loser
    WINNER_TABLE[key].call(@throws)
  end

  private

    def key
      [@throws.first.token.name, @throws.last.token.name].map(&:downcase).join(",")
    end
end
