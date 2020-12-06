class RoutinesController < ApplicationController
  # before_action :require_login

  def index
    @routines = Routine.all
  end

  def show
    @routine = Routine.find_by(id: params[:id])
  end

  def new
    @routine = Routine.new
    @routine.build_product
    @days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
  end

  def edit
    @routine = Routine.find_by(id: params[:id])
  end

  def create
    @routine = Routine.new(routine_params)
    @routine.user_id = session[:user_id]
    if @routine.save 
      redirect_to routine_path(@routine)
    else
      render :new
    end
  end

  def update
    @routine = Routine.find_by(id: params[:id])
    @routine.update(routine_params)

    redirect_to routine_path(@routine)
  end

  private

  # def require_login
  #   if !session.include? :user_id
  #       redirect_to '/'
  #   end
  # end 

  def routine_params
    params.require(:routine).permit(:name, :user_id, :product_id)
  end
end
