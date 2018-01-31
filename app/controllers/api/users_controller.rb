class Api::UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save!
      login(@user)
      render json: @user
    end
  end

  def show
    @user = User.find_by(email: email)
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :password, :about, :image_url)
  end

end
