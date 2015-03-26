class User < ActiveRecord::Base
  has_many :wins, :class_name => "Game", :foreign_key => :wins_id
  has_many :losses, :class_name => "Game", :foreign_key => :losses_id
end