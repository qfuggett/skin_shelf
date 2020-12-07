class ProductsController < ApplicationController
  # before_action :require_login

  def index
    @products = current_user.products.uniq
  end

  def show
    @product = current_user.products.find_by(id: params[:id])
  end

  private

  # def require_login
  #   if !session.include? :user_id
  #       redirect_to '/'
  #   end
  # end

  def product_params
    params.require(:product).permit(:name, :active_ingredient_1, :active_ingredient_2)
  end
end
