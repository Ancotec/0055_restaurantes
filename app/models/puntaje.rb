class Puntaje < ApplicationRecord
<<<<<<< HEAD

    before_validation :capitalizar

    has_many :puntajes_platos
    has_many :puntajes_restaurantes

    validates(:tipo, presence: true)
    validates(:tipo, uniqueness: true)

    private
    def capitalizar
        self.tipo.capitalize!private
    end
=======
>>>>>>> d5c6a7a5cc0c6997d0cc85fe03ebe85596bdce6c
end
