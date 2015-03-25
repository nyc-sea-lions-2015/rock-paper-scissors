class Game < ActiveRecord::Base
  has_many :tokens
  belongs_to :user_1, :class_name => 'User'
  belongs_to :user_2, :class_name => 'User'
end
