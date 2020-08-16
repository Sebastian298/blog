class Article < ApplicationRecord
    validates :tittle, presence: true,length: {minimum:5, maximum:100}     #constrains que ayudan que no se deje en blanco el campo title y description, y especifican una longitud minima en caracteres
    validates :description, presence: true,length: {minimum:10, maximum:100}
end