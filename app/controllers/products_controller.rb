class ProductsController < ApplicationController
  before_filter :authorize, except: [:index, :show]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_url, notice: "Product #{@product.name} successfully created!"
    else
      render "new"
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :description)
  end
end
