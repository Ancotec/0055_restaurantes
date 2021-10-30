class TipoComida < ApplicationRecord
<<<<<<< HEAD
    before_validation :convertir_a_minusculas
    after_save :enviar_correo
    after_destroy :imprmir_el_eliminado

    has_many :restaurantes # en plural

    validates(:tipo, presence: true)    # evita guardar datos vacíos en la BD según el campo de tipo
    validates(:tipo, uniqueness: true)  # evita que existan registros duplicados según el campo de tipo

    private
    def convertir_a_minusculas
        puts "ANTES DE LA VALIDACIÓN 🛴"
        self.tipo.downcase!
        # self.tipo = self.tipo.downcase
        # @tipo.capitalize!
    end

    def enviar_correo
        puts "DESPUÉS DE GUARDAR 📬".center(50, ".")
    end

    def imprmir_el_eliminado
        puts "#{self.tipo} ELIMINADO".center(50, "🔴")
        
    end
end
=======
    has_many :restaurantes
end
>>>>>>> d5c6a7a5cc0c6997d0cc85fe03ebe85596bdce6c
