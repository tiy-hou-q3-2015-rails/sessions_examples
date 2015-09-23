class PagesController < ApplicationController


  before_action :authenticate_user!, only: :about


  def about
  end

  def contact
  end
end
