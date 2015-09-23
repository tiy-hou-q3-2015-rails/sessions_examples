class ThoughtsController < ApplicationController




  def index
  end

  def show
    @deep_thought = DeepThought.find params[:id]
  end
end
