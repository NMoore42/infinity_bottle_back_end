class UsersController < ApplicationController

  def create
    user = User.create(user_params)
    session[:user_id] = user.id
    redirect_to user
  end

  
end
