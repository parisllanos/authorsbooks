class Author < ActiveRecord::Base
	validates :name,:presence=>{:message=>'no puede ser vacio'}
	validates :check,:presence=>{:message=>'no puede ser vacio'}
end
