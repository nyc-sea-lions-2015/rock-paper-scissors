class Token < ActiveRecord::Base
	# validates :name, presence: true
	# validates :image, presence: true

  BEATS = {
    'rock' => 'scissors',
    'paper' => 'rock',
    'scissors' => 'paper'
  }

  def beats(opponent_choice)
    BEATS[name] == opponent_choice.name
  end
end
