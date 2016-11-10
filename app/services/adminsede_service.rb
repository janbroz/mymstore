class AdminsedeService

  def initialize()
    @client = Savon.client(wsdl: "http://25.77.79.209:8085/WebServicesAlmacenMyM/services/AdminSedesWS?wsdl")
  end

  def crear_sede(sede, ciudad, direccion, telefono)
    response = @client.call(:agregar_sede, message: {"sede" => sede, "ciudad" => ciudad, "direccion" => direccion, "telefono" => telefono})
  end

  def editar_sede(id, sede, ciudad, direccion, telefono)
    response = @client.call(:modificarSede, message: {"id" => id, "sede" => sede, "ciudad" => ciudad, "direccion" => direccion, "telefono" => telefono})
  end

  def eliminar_sede(id)
    response = @client.call(:eliminarSede, message: {"id" => id})
  end

  def listar_sedes()
    response = @client.call(:listar_sedes, message: {})
  end

end
