class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
    client_id = @order.client_id
    @client = Client.find(client_id)
  end


  def new
    @clients = Client.all
    unless params[:client_id].nil?
      @order = Order.new(:client_id => params[:client_id])
      3.times do
        item = @order.items.build
      end

      @client = Client.find(params[:client_id])
    else
      @order = Order.new
      3.times do
        item = @order.items.build
      end
    end

  end

  def create
    @order = Order.new(order_params)
    if @order.save 
      redirect_to @order
    else
      redirect_to new_order_path
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def order_params
    params.require(:order).permit(:order_number, :status, :expected_date, :client_id, items_attributes: [:id, :client_id, :order_id, :order_number, :dress_id, :fabric_id, :qty, :status, :expected_date])
  end

end
