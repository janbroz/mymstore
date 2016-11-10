class AdminventasService

  def initialize()
    @client = Savon.client(wsdl: "http://25.77.79.209:8085/WebServicesAlmacenMyM/services/AdminVentasWS?wsdl")
  end

  def crear_venta(cliente, vendedor, fecha)
    response = @client.call(:agregar_venta, message: {"cliente" => cliente, "vendedor" => vendedor, "fecha" => fecha})
  end

  def editar_venta()
  end

  def eliminar_venta()
  end

  def obtener_total()
  end

  def generar_factura()
  end

  def generar_devolucion()
  end

end
