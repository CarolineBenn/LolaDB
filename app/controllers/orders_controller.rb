class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
  end

  def new

    unless params[:client_id].nil?
      @order = Order.new(:client_id => params[:client_id])
      @client = Client.find(params[:client_id])
    else
      @order = Order.new
    end

  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end
end
