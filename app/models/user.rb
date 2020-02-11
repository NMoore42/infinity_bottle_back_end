class User < ApplicationRecord
  has_many :bottles
  has_many :pours, through: :bottles

  def name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end

end
