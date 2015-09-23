class SecretsController < ApplicationController

  before_action :authenticate_user!

  before_action do
    redirect_to root_path, alert: "You are a bad person and you should feel bad" unless @current_user.admin?
  end

  def so_very_secret
  end
end
