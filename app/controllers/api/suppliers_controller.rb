class Api::SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
    render "index.json.jb"
  end

  def create
    @supplier = Supplier.new({
      name: params[:name],
      phone_number: params[:phone_number],
      email: params[:email],
    })
    if @supplier.save
      render "show.json.jb"
    else
      render json: { errors: @supplier.errors.full_messages }, status: 422
    end
  end

  def show
    @supplier = Supplier.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.name = params[:name] || @supplier.name
    @supplier.phone_number = params[:phone_number] || @supplier.phone_number
    @supplier.email = params[:email] || @supplier.email
    if @supplier.save
      render "show.json.jb"
    else
      render json: { errors: @supplier.errors.full_message }, status: :unprocessable_entity
    end
  end

  def destroy
    supplier = Supplier.find_by(id: params[:id])
    supplier.destroy
    render json: { message: "This supplier no longer supplies to us." }
  end
end
