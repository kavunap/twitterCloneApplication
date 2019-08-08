class TweesController < ApplicationController
  before_action :set_twee, only: [:show, :edit, :update, :destroy]


  def index
    @twees = Twee.all
  end

  def new
    if params[:back]
      @twee = Twee.new
        twee_params
    else
       @twee = Twee.new
    end
  end

  def create
    @twee = Twee.new(twee_params)
    if @twee.save
      redirect_to twees_path, notice: "You posted a new Tweet!"
    else
        #Redraw the input form.
      render :new
    end  
  end  

  def update
    if @twee.update(twee_params)
      redirect_to twees_path, notice: "Tweet has been changed！"
    else
      render :edit
    end
  end
  
  def confirm
    @twee = Twee.new(twee_params)
  end


  def destroy
    @twee.destroy
    redirect_to root_path, notice: "Tweet has been deleted!!"
  end

  
  def show
    @twee = Twee.find(params[:id])
  end

  def edit
  end
    
  private
  def twee_params
    params.require(:twee).permit(:content)
  end

  def set_twee
    @twee = Twee.find(params[:id])
  end
end


  

