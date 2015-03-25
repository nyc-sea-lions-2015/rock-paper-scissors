class Beat < ActiveRecord::Base
  belongs_to :winner,
             :foreign_key => 'winner_id',
             :class_name => "Hand"
  belongs_to :loser,
             :foreign_key => 'loser_id',
             :class_name => "Hand"
end
