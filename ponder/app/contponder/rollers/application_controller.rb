class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action do
    @deep_thoughts = DeepThought.all.order("posted_at desc")
    # @user_name = session["user_name"]
    # session[:user_id]
    @current_user = User.find_by id: session[:user_id]
  end

  def authenticate_user!
    if @current_user.blank?
      session[:return_to] = request.url
      redirect_to sign_in_path, notice: "Please sign in to see secrets"
    end
  end

end
