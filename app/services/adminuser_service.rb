# coding: utf-8
class AdminuserService

  def initialize()
    @client = Savon.client(wsdl: "http://localhost:8085/WebServicesAlmacenMyM/services/AdminUsuariosWS?wsdl")
  end

  def registrar_usuario(nombre, contraseña, documento, correo, telefono, direccion, pais, tusuario)
    response = @client.call(:agregar, message: {"nombre" => nombre, "contraseña" => contraseña, "documento" => documento, "correo" => correo, "telefono" => telefono, "direccion" => direccion, "pais" => pais, "tusuario" => tusuario})
  end

  def editar_usuario(id, nombre, contraseña, documento, correo, telefono, direccion, pais, tusuario)
    response = @client.call(:agregar, message: {"id" => id, "nombre" => nombre, "contraseña" => contraseña, "documento" => documento, "correo" => correo, "telefono" => telefono, "direccion" => direccion, "pais" => pais, "tusuario" => tusuario})
  end

  def eliminar_usuario(id)
    response = @client.call(:eliminar, message: {"id" => id})
  end

  def listar_usuarios()
    response = @client.call(:listarUsuarios, message: {})
  end
  
end
