class StoresController < ApplicationController
  def index
    @stores = ["tienda1", "tienda2", "tienda3"]
  end

  def show

  end

  def new
  end

  def create
    puts params[:store]
    redirect_to :stores
  end

  def update
  end

  def destroy
  end

  
end
