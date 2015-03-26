class Token < ActiveRecord::Base
  has_many :winning_tokens, :class_name => 'Game', :foreign_key => 'winning_token_id'
  has_many :losing_tokens, :class_name => 'Game', :foreign_key => 'losing_token_id'

  validates :name, presence: true
  validates :image, presence: true
end