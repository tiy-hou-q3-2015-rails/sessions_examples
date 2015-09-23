class SessionsController < ApplicationController
  def new
  end

  def create
    email = params[:email]
    password = params[:password]
    #check email and password against what they should be
    # find the user, check if password is correct
    user = User.find_by email: email

    # if user.present? && user.authenticate(password)
    if user.try(:authenticate, password)
      # fake login this person
      session[:user_id] = user.id
      if session[:return_to].present?
        redirect_to session[:return_to]
      else
        redirect_to root_path
      end

      # making fetch happen (will use root_path if return_to is not set)
      # redirect_to session.fetch(:return_to, root_path)


    else
      # show it now
      flash.now[:alert] =  "Something is wrong with your email or password. Try gain."
      render :new
    end
  end

  def delete
    #what goes here
    session.delete :user_id
    redirect_to root_path, notice: "😢😢😢 Poof, ya gone 😢😢😢"
  end
end
