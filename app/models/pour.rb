class Pour < ApplicationRecord
  belongs_to :bottle
  has_one :user, through: :bottle

  def pour_price
    (pour_price_per_bottle / pour_bottle_volume) * pour_volume
  end

end
