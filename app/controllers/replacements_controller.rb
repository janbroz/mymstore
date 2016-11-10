class ReplacementsController < ApplicationController

  def index
    adminrepuesto = AdminrepuestoService.new()
    tmp_repuestos = adminrepuesto.listar_repuestos.to_hash
    @repuestos = tmp_repuestos[:listar_response][:listar_return]

    tmp_search = adminrepuesto.consultar_repuesto(params[:search])
    @repuesto = tmp_search.to_hash[:consultar_response][:consultar_return]
  end

  def new
  end

  def search
    @search = adminrepuesto.consultar_repuesto("Llanta").to_hash[:consultar_response][:consultar_return]
  end

  def create
    adminrepuesto = AdminrepuestoService.new()
    repuesto = params[:replacement][:repuesto]
    marca = params[:replacement][:marca]
    referencia = params[:replacement][:referencia]
    descripcion = params[:replacement][:descripcion]
    precio = params[:replacement][:precio]
    adminrepuesto.agregar_repuesto(repuesto, marca, referencia, descripcion, precio)
    puts params[:replacement]
    redirect_to :replacements
  end

  def updatep
  end

  def destroy
  end

  
end
