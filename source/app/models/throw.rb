class Throw < ActiveRecord::Base
  belongs_to :token
  belongs_to :user
end
