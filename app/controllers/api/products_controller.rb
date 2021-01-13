class Api::ProductsController < ApplicationController
  def product_method
    @message = "Hello!"
    render "product.json.jb"
  end
end
