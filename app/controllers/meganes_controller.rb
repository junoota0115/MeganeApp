class MeganesController < ApplicationController
  def index
    @meganes = Megane.all
  end

  def new
    @megane = Megane.new

  end

  def create
    @megane = Megane.new(megane_params)
    @megane.save
    redirect_to @meganes
  end
  
  def show
    @megane = Megane.find(params[:id]);
  end

  private
  def megane_params
    params.require(:megane).permit(:title ,:name ,:content)
  end
end
