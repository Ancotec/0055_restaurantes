class PuntajesController < ApplicationController
    def listar
      #@todos_los_puntajes = Puntaje.all.order(id: :asc)
      @todos_los_puntajes = Puntaje.all
    end
  
  # CREAR
    def crear
     @puntaje = Puntaje.new
    end
  
  #MOSTRAR
    def mostrar
      @puntaje = Puntaje.find(params[:id])
    end
  
  #EDITAR
    def editar
      @puntaje = Puntaje.find(params[:id])
    end
  
  #GUARDAR
    def guardar
      datos_puntaje = params.require(:puntaje).permit(:tipo)
      nuevo_puntaje = Puntaje.new(datos_puntaje)
      nuevo_puntaje.save
      redirect_to puntajes_path
    end
  
  #ACTUALIZAR
    def actualizar
      @puntaje = Puntaje.find(params[:id])
      datos_puntaje = params.require(:puntaje).permit(:tipo)
      @puntaje.tipo = datos_puntaje[:tipo]
      @puntaje.save
      redirect_to puntajes_path
    end
  
  #DELETE
  
  def eliminar
  puntaje = Puntaje.find(params[:id])
  puntaje.destroy
  redirect_to puntajes_path
  end
  end