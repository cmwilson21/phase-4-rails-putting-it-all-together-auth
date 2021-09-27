class UsersController < ApplicationController
 before_action :authorize, only: [:show]

  def create
    @user = User.create(user_params)
    if @user.save
      login_user
      render json: @user, status: :created
    else
      render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
  end

  def show
    render json: @current_user
  end


  private
  def user_params
    params.permit(:username, :password, :image_url, :bio)
  end



end
