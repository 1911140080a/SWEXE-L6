class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def create
    @product = Product.new(name: params[:product][:name], price: params[:product][:price])
    if @product.save
      redirect_to'/'
    else
      render 'new'
    end
  end
end
