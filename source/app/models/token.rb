class Token < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :image, presence: true

end