class TweesController < ApplicationController
<<<<<<< HEAD
  before_action :set_twee, only: [:show, :edit, :update, :destroy]


=======
  before_action :set_twee, only: [:destroy, :show, :edit, :update]
  def update
    if @twee.update(twee_params)
      redirect_to twees_path, notice: "Message has been changed！"
    else
      render :edit
    end
  end
  
>>>>>>> 7bced45a7c2ea725ad22c114babc786361e016e0
  def index
    @twees = Twee.all
  end

  def new
    if params[:back]
<<<<<<< HEAD
      @twee = Twee.new
        twee_params
    else
       @twee = Twee.new
=======
      @twee = Twee.new(twee_params)
    else
      @twee = Twee.new
>>>>>>> 7bced45a7c2ea725ad22c114babc786361e016e0
    end
  end

  def create
    @twee = Twee.new(twee_params)
    if @twee.save
<<<<<<< HEAD
      redirect_to twees_path, notice: "You posted a new Tweet!"
    else
        #Redraw the input form.
=======
      redirect_to twees_path, notice: "You posted a new message!"
    else
        # Redraw the input form.
>>>>>>> 7bced45a7c2ea725ad22c114babc786361e016e0
      render :new
    end  
  end  

<<<<<<< HEAD
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

=======
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
>>>>>>> 7bced45a7c2ea725ad22c114babc786361e016e0

  

