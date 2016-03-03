class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def show
    @product = Product.find(params[:id])
  end
  def new
  end
  def create
  end
  def edit
  end
  def update
  end
  def destroy
  end
end
