class AdminsedeService

  def initialize()
    @client = Savon.client(wsdl: "adminsedeurl")
  end

  def crear_sede(sede, ciudad, direccion, telefono)
    response = @client.call(:agregarSede, message: {"sede" => sede, "ciudad" => ciudad, "direccion" => direccion, "telefono" => telefono})
  end

  def editar_sede(id, sede, ciudad, direccion, telefono)
    response = @client.call(:modificarSede, message: {"id" => id, "sede" => sede, "ciudad" => ciudad, "direccion" => direccion, "telefono" => telefono})
    
  end

  def eliminar_sede(id)
    response = @client.call(:eliminarSede, message: {"id" => id})
  end

  def listar_sedes()
    response = @client.call(:listarSede, message: {})
  end

end
