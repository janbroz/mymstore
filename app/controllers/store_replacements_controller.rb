class StoreReplacementsController < ApplicationController

  def index
    repsede = RepuestoensedeService.new()
    tmp = repsede.listar_repuestos().to_hash
    @rep_sede = tmp[:listar_r_response][:listar_r_return]
    
  end

  def new
  end

  def create
    repsede = RepuestoensedeService.new()
    sede = params[:store_replacement][:sede]
    repuesto = params[:store_replacement][:repuesto]
    cantidad = params[:store_replacement][:cantidad]
    repsede.agregar_cantidad(sede, repuesto, cantidad)
    redirect_to store_replacements
  end

  def update
  end

  def destroy
  end
  
end
