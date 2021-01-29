class Api::CartedProductsController < ApplicationController
  def index
    @carted_products = current_user.carted_products.where(status: "Carted")
    render "index.json.jb"
  end

  def create
    @carted_product = CartedProduct.new({
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "Carted",
      order_id: " ",
    })
    if @carted_product.save
      render "show.json.jb"
    else
      render json: { errors: @carted_product.errors.full_messages }
    end
  end
end
