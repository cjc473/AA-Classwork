class Api::UsersController < ApplicationController
  def create
    debugger
    @user = User.new(user_params)
    if @user.save
      login!(@user)
      render :show # placeholder
    else
      render json: @user.errors.full_messages, status: 401
    end
  end

  private 

  def user_params
    params.require(:user).permit(:username, :password)
  end
end

# $.ajax({ method: "POST", url: "/api/users", data: {username: "bob12345", password: "password123"}})