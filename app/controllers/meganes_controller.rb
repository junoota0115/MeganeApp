class MeganesController < ApplicationController
  def index
    @meganes = Megane.all
  end

  def new
    @megane = Megane.new

  end

  def create
    @megane = Megane.new(megane_params)

    if @megane.save
       redirect_to meganes_path
    else 
       render 'new',status: :unprocessable_entity
    end
  
  end
  
  def show
    @megane = Megane.find(params[:id]);
  end

  def destroy
    @megane = Megane.find(params[:id]);
    if @megane.destroy
      flash[:notice] = '記録が削除されました。'
      redirect_to meganes_path
    end
  end

  private
  def megane_params
    params.require(:megane).permit(:title ,:name ,:content)
  end
end
