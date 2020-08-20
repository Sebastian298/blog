class User < ApplicationRecord
    has_many :articles
    #Validaciones para los campos de la tabla usuario, donde se valida que no se deje en blanco el campo
    #que valide repetidos tomando en cuenta mayuscula y minuscula y la longitud de caracteres
    validates :username, presence: true,
                                       uniqueness: { case_sensitive: false }, 
                                       length: {minimum:3, maximum:30}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i #expr regular para validar el formato de entrada del email
    validates :email, presence: true, 
                                       uniqueness: { case_sensitive: false },  #validacion para que tome en cuenta mayusculas y minusculas en el tema de los duplicados
                                       length: {maximum:110},
                                       format: { with: VALID_EMAIL_REGEX }
end