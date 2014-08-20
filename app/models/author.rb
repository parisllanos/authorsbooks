class Author < ActiveRecord::Base
	has_many :abs
	has_many :books,:through=>:abs

	validates :name,:presence=>{:message=>'no puede ser vacio'}
	validates :check,:presence=>{:message=>'no puede ser vacio'}
	validates :check,:numericality=>{:only_integer=>true,:less_than_or_equal_to=>1,:message=>'Solo puede ser 1 o 0	'}
end
