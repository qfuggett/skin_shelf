class ProductsController < ApplicationController
  # before_action :require_login

  def index
    @products = Product.all
    @user = current_user
  end

  def show
    @product = Product.find_by(id: params[:id])
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def create
    @product = Product.create(product_params)

    redirect_to product_path(@product)
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(product_params)

    redirect_to product_path(@product)
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
