class ApplicationController < ActionController::API
  include ActionController::Cookies
  # rescue_from ActiveRecord::RecordInvalid


  def login_user
    session[:user_id] = @user.id 
  end

  def authorize 
    @current_user = User.find_by(id: sesssion[:user_id])
    render json: {errors: "Not authorized"}, status: :unauthorized unless @current_user
  end

end
