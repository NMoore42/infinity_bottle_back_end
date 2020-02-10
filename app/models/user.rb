class User < ApplicationRecord
  has_many :bottles
  has_many :pours, through: :bottles
end
