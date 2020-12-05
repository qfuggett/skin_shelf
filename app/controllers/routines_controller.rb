class RoutinesController < ApplicationController

  def index
    @routines = Routine.all
  end

  def show
    @routine = Routine.find_by(id: params[:id])
  end

  def new
    @routine = Routine.new
  end

  def edit
    @routine = Routine.find_by(id: params[:id])
  end

  def create
    @routine = Routine.create(routine_params)

    redirect_to routine_path(@routine)
  end

  def update
    @routine = Routine.find_by(id: params[:id])
    @routine.update(routine_params)

    redirect_to routine_path(@routine)
  end

  private

  def routine_params
    params.require(:routine).permit(:name, :user_id, :product_id)
  end
end
