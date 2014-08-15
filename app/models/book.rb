class Book < ActiveRecord::Base

	has_many :ab
	has_many :authors,:through=>:ab

	validates :title, :presence=>{:message=>'no puede ser blanco'}
	validates :year, :presence=>{:message=>'la fecha es obligatoria'}
	validates :year, :numericality=>{:message=>'solo numeros'}
	validates :year, :length => {:maximum=>3,:message=>'es demaciado largo'}
	validates :year, :length => {:minimum=>1,:message=>'es demaciado corto'}
	validates :author_id,:presence=>{:message=>'debes seleccionar un author'}
end
