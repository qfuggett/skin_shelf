class RoutinesController < ApplicationController
  before_action :user_signed_in?

  def index
    if params[:product_id]
      @routines = current_user.routines.where(product_id: params[:product_id])
      @product = current_user.products.find_by(id: params[:product_id])
    else
      @routines = current_user.routines
    end
  end

  def show
    @routine = current_user.routines.find_by(id: params[:id])
  end

  def new
    @routine = current_user.routines.build
    @product = @routine.build_product
  end

  def edit
    @routine = current_user.routines.find_by(id: params[:id])
  end

  def create
    @routine = current_user.routines.build(routine_params)
    if @routine.save 
      redirect_to routine_path(@routine)
    else
      render :new
    end
  end

  def update
    @routine = current_user.routines.find_by(id: params[:id])
    @routine.update(routine_params)

    redirect_to routine_path(@routine)
  end

  def destroy
    @routine = current_user.routines.find_by(id: params[:id])
    @routine.destroy

    redirect_to routines_path(@routines)
  end

  private

  def routine_params
    params.require(:routine).permit(:name, :product_id, product_attributes: [
      :name,
      :active_ingredient_1,
      :active_ingredient_2
     ])
  end
end
