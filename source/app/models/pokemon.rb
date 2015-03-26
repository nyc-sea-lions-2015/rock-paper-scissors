class Pokemon < ActiveRecord::Base
  belongs_to :games
  has_many :games
end
