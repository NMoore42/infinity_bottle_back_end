class Bottle < ApplicationRecord
  belongs_to :user
  has_many :pours
end
