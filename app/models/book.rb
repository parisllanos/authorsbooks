class Book < ActiveRecord::Base
	validates :title, :presence=>{:message=>'no puede ser blanco'}
	validates :year, :presence=>{:message=>'la fecha es obligatoria'}
	validates :year, :numericality=>{:message=>'solo numeros'}
	validates :year, :length => {:maximum=>3,:message=>'es demaciado largo'}
	validates :year, :length => {:minimum=>1,:message=>'es demaciado corto'}
end
