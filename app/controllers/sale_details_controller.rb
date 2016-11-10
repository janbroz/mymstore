class SaleDetailsController < ApplicationController

  def index
    adminventas = AdminventasService.new()
    tmp_sales = adminventas.listar().to_hash
    @sales = tmp_sales
    
  end

  def show
    @id = params[:id]
    details = DetalleventasService.new()
    @details = details.consultar_detalles(@id)
    
  end

  def new
  end

  def create
    adminventa = AdminventasService.new()
    cliente = params[:sale][:cliente]
    vendedor = params[:sale][:vendedor]
    fecha = params[:sale][:fecha]
    adminventa.crear_venta(cliente, vendedor, fecha)
    redirect_to sale_details
    
  end

  def update
  end

  def destroy
  end
  
end
