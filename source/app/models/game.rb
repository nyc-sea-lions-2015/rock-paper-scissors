class Game < ActiveRecord::Base
  has_many :throws
  belongs_to :winning_throw, class_name: 'Throw'
  belongs_to :losing_throw, class_name: 'Throw'
end
