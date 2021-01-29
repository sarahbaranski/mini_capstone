class Api::CartedProductsController < ApplicationController
  def index
    @cartedproducts = current_user.cartedproducts
    render "index.json.jb"
  end

  def create
    @cartedproducts = CartedProduct.new({
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "Carted",
      order_id: " ",
    })
    if @cartedproducts.save
      render "show.json.jb"
    end #add and else statement here
  end
end
