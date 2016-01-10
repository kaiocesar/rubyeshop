class Product < ActiveRecord::Base
	validates :name, presence: true	
	validates :amount, numericality: true	
end
