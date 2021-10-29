class Plato < ApplicationRecord
    belongs_to :restaurante

    has_many :puntajes_platos
    has_many :puntajes, through: :puntajes_platos
    validate(:nombre, presence: true)
    validate(:precio, presence: true)
    validate(:descripcion, presence: true)
end
