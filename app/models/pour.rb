class Pour < ApplicationRecord
  belongs_to :bottle
  has_one :user, through: :bottle
end
