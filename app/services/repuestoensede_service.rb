class RepuestoensedeService

  def initialize()
    @client = Savon.client(wsdl: "http://localhost:8085/WebServicesAlmacenMyM/services/repuestoEnSedeWS?wsdl")
  end

  def consultar_repuesto_en_sede

  end
  
  def agregar_cantidad(sede, repuesto, cantidad)
    response = @client.call(:agregarCantidad, message: {"id_sede" => sede, "id_repuesto" => repuesto, "CantidadRepuesto" => cantidad})
  end

  def sumar_cantidad(idsede, idrepuesto, sCantidad)
    response = @client.call(:sumarCantidad, message: {"idsede" => idsede, "idrepuesto" => idrepuesto, "sCantidad" => sCantidad})
  end

  def restar_cantidad(idsede, idrepuesto, sCantidad)
    response = @client.call(:restarCantidad, message: {"idsede" => idsede, "idrepuesto" => idrepuesto, "sCantidad" => sCantidad})
  end
  
  def modificar_repuesto_en_sede
  end

end
