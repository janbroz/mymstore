class DetalleventasService

  def initialize()
    @client = Savon.client(wsdl: "http://25.77.79.209:8085/WebServicesAlmacenMyM/services/DetalleVentaWS?wsdl")
  end

  def crear_venta()
  end

  def editar_venta()
  end

  def eliminar_venta()
  end

  def obtener_total()
  end

  def generar_factura()
  end

  def consultar_detalles(id)

  end

  def generar_devolucion()
  end

end
