class ProductsController < ApplicationController
  before_action :user_signed_in?

  def index
    @products = current_user.products.uniq
    @strong_products = current_user.products.strong.uniq
  end

  def show
    @product = current_user.products.find_by(id: params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:name, :active_ingredient_1, :active_ingredient_2)
  end
end
