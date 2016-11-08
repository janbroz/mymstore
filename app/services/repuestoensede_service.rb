class RepuestoensedeService

  def initialize()
    @client = Savon.client(wsdl: "rpensedeurl")
  end

  def consultar_repuesto_en_sede
  end

  def modificar_repuesto_en_sede
  end

end
