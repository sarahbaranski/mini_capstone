class Api::ImagesController < ApplicationController
  def index
    @images = Image.all
    render "index.json.jb"
  end

  def create
    @image = Image.new({
      url: params[:url],
      product_id: params[:product_id],
    })
    if @image.save
      render "show.json.jb"
      # else
      #   render json: { errors: @image.errors.full_messages }, status: 422
    end
  end

  def show
    @image = Image.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @image = Image.find_by(id: params[:id])
    @image.url = params[:url] || @image.url
    render "show.json.jb"
  end

  def destroy
    image = Image.find_by(id: params[:id])
    image.destroy
    render json: { message: "Image has been deleted." }
  end
end
