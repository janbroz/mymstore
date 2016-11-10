class StoresController < ApplicationController
  def index
    adminsede = AdminsedeService.new()    
    tmp_stores = adminsede.listar_sedes().to_hash
    @stores = tmp_stores[:listar_sedes_response][:listar_sedes_return]
  end

  def show

  end

  def new
  end

  def create
    adminsede = AdminsedeService.new()
    sede = params[:store][:sede]
    ciudad = params[:store][:ciudad]
    direccion = params[:store][:direccion]
    telefono = params[:store][:telefono]
    adminsede.crear_sede(sede, ciudad, direccion, telefono)
    
    redirect_to :stores
  end

  def update
  end

  def destroy
  end

  
end
