class TipoComida < ApplicationRecord
    has_many:restaurantes
    validates(:tipo, presence: true) # evita guardar datos vacios en la base de datos segun el campo tipo
    validates(:tipo, uniqueness: true) # evita que existan registros duplicados segunel campo tipo
end