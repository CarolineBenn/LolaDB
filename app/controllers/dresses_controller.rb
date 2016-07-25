class DressesController < ApplicationController
  def index
    @dresses = Dress.all
  end

  def show
    @dress = Dress.find(params[:id])
  end

  def new
    @dress = Dress.new
  end

  def create
    @dress = Dress.new(dress_params)
    if @dress.save 
      redirect_to @dress
    else
      redirect_to new_dress_path
    end
  end

  def edit
    @dress = Dress.find(params[:id])
  end

  def update
    @dress = Dress.find(params[:id])

    if @dress.update(dress_params)
      redirect_to @dress
    else
      render 'edit'
    end
  end

  def delete
  end





  private

  def dress_params
    params.require(:dress).permit(:name, :description, :rrp, :image)
  end


end
