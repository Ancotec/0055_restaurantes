class Restaurante < ApplicationRecord
<<<<<<< HEAD
  belongs_to (:tipo_comida)
  has_many :platos

  has_many :invitaciones
  #has_many :usuarios, through: :invitaciones

  has_many :promociones
  #has_many :usuarios, through: :invitaciones

  has_many :puntajes_restaurantes
  has_many :puntajes, through: :puntajes_restaurantes

  validates(:nombre, presence: true, uniqueness: true)
  validates(:tipo_comida_id, presence: true)
=======
  belongs_to(:tipo_comida)
>>>>>>> d5c6a7a5cc0c6997d0cc85fe03ebe85596bdce6c
end
