# coding: utf-8
class UsersController < ApplicationController

  def index
    adminusers = AdminuserService.new()
    tmp_users = adminusers.listar_usuarios().to_hash
    @users = tmp_users[:listar_response][:listar_return]
  end

  def new
  end

  def create
    adminusers = AdminuserService.new()
    nombre = params[:user][:nombre]
    contraseña = params[:user][:contraseña]
    documento = params[:user][:documento]
    correo = params[:user][:correo]
    telefono = params[:user][:telefono]
    direccion = params[:user][:direccion]
    pais = params[:user][:pais]
    tusuario = params[:user][:tusuario]
    adminusers.registrar_usuario(nombre, contraseña, documento, correo, telefono, direccion, pais, tusuario)
    puts params[:user]
    redirect_to :users
    
  end

  def update
  end

  def delete
  end
  
end
