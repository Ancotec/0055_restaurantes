class RestaurantesController < ApplicationController

    #GET /restaurantes/nuevo
    #def CreateRestaurantes
    
    def crear
        @restaurante = Restaurante.new
        @tipos_comidas = TipoComida.all
    end

    #POST /restaurantes
    def guardar
        datos_restaurantes = params.require(:restaurante).permit(:nombre, :tipo_comida)
        @restaurante = Restaurante.new(datos_restaurantes)
        if @restaurante.save
            redirect_to restaurantes_path # TODO: crear la ruta de todos los restaurantes
        else
            render :crear
        end
        

    end
end