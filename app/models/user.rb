class User < ActiveRecord::Base
  has_many :to_dos
  has_many :pomodoros, through: :to_do
end
