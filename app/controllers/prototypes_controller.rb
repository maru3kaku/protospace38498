class PrototypesController < ApplicationController
  before_action :set_prototype, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :contributor_confirmation, only: [:edit, :update, :destroy]

  def index
    @prototypes = Prototype.includes(:user)
  end
  

  def new
    @prototype = Prototype.new
  end

  def create
    prototype = Prototype.new(prototype_params)    
    if @prototype.save
      redirect_to @prototype
    else 
      render :new
  end
end

  def destroy
    prototype = Prototype.find(params[:id])
    prototype.destroy
  end

  def edit
  end

  def update
    prototype = Prototype.find(params[:id])
    prototype.update(prototype_params)
  end

  def show
    @comment = Comment.new
    @comments = @prototype.comments
  end
  
  private
  def prototype_params
    params.require(:prototype).permit(:name, :image, :text).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
