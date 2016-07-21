class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def show
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save 
      redirect_to @client
    else
      redirect_to new_client_path
    end
  end

  def edit
  end

  def update
  end

  def delete
  end


  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :business_name, :email, :billing_email, :telephone, :mobile, :invoicing_address, :postcode, :country, :occupation, :other, :facebook, :twitter, :instagram, :notes)
  end


end
