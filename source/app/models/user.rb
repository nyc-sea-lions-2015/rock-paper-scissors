class CreateUsers < ActiveRecord::Base
  validates :player, presence: true
end
