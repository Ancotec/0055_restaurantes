class VotacionesController < ApplicationController

    def Restaurantes
        @restaurantes = Restaurante.all