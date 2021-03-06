class User < ApplicationRecord
    before_save { self.email = email.downcase } #antes de hacer un guardado a la bd el metodo downcase transforma toda la cadena a minusculas y despues lo guarda con el metodo save
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

    has_secure_password #al agregar la gema bcrypt se a;ade en el modelo un campo con el password
end