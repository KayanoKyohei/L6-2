class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @products = Product.new
  end

  def create
    products = Product.new(name: params[:product][:name],price: params[:product][:price])
    products.save
    redirect_to root_path
  end

  def destroy
    Product.find(params[:id]).destroy
    redirect_to root_path
  end
end
