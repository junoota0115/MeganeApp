class MeganesController < ApplicationController
  def index
    @meganes = Megane.all
  end

  def new
  end
  
  def create
    @meganes = Megane.new
  end
end
