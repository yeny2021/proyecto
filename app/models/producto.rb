class Producto < ApplicationRecord
  belongs_to :categorium

  validates :nombre, :imagen, :descripcion, 
  presence: {message: "campo obligatorio"}

  validates :nombre,
  length: {minimum: 4, maximum: 100, message:"el nombre debe tener más de 4 caracteres y maximo 100"}

  validates :descripcion,
  length: {minimum: 15, maximum: 200, message:"el nombre debe tener más de 15 caracteres y maximo 200"}

  validates :nombre,
  uniqueness: {message:"repetido"}
end
