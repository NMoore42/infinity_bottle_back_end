class User < ApplicationRecord
  has_secure_password
  has_many :bottles
  has_many :pours, through: :bottles

  def name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end

  def create
    user = User.create(user_params)
    session[:user_id] = user.id
    redirect_to user
  end

  

end
