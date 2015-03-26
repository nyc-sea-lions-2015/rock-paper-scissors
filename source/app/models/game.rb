class Game < ActiveRecord::Base
	belongs_to :user_1, :class_name => 'User'
	belongs_to :user_2, :class_name => 'User'
	belongs_to :user_1_choice, :class_name => 'Token'
	belongs_to :user_2_choice, :class_name => 'Token'



  def winner
    return nil unless player_2_choice and player_2_choice
    return player_1 if player_1_choice.beats(player_2_choice)
    return player_2 if player_2_choice.beats(player_1_choice)
  end
  
  def complete?
    user_1_choice and user_2_choice
  end

end
