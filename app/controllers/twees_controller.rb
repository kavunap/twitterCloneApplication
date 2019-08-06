class TweesController < ApplicationController
  before_action :set_twee, only: [:destroy, :show, :edit, :update]
  def update
    if @twee.update(twee_params)
      redirect_to twees_path, notice: "Message has been changed！"
    else
      render :edit
    end
  end
  
  def index
    @twees = Twee.all
  end

  def new
    if params[:back]
      @twee = Twee.new(twee_params)
    else
      @twee = Twee.new
    end
  end

  def create
    @twee = Twee.new(twee_params)
    if @twee.save
      redirect_to twees_path, notice: "You posted a new message!"
    else
        # Redraw the input form.
      render :new
    end  
  end  

    def destroy
      @twee.destroy
      redirect_to twees_path, notice: "Message deleted!!"
    end

    def confirm
      @twee = Twee.new(twee_params)
      end
    end

    def show
      redirect_to new_twee_path
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

  

