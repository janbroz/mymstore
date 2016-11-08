class AdminrepuestoService

  def initialize()
    @client = Savon.client(wsdl: "url")
  end

  def agregar_repuesto(repuesto, marca, referencia, descripcion, precio)
    response = @client.call(:agregar, message: {"repuesto" => repuesto, "marca" => marca, "referencia" => referencia, "descripcion" => descripcion, "precio" => precio})
  end

  def modificar_repuesto(id, repuesto, marca, referencia, descripcion, precio)
    response = @client.call(:modificar, message: {"id" => id, "repuesto" => repuesto, "marca" => marca, "referencia" => referencia, "descripcion" => descripcion, "precio" => precio})    
  end

  def consultar_repuesto(consulta)
    response = @client.call(:consultar, message: {"consulta" => consulta})
  end

  def eliminar_repuesto(id)
    response = @client.call(:eliminar, message: {"id" => id})
  end


end
