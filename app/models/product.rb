class Product < ActiveRecord::Base
	validates :name, presence: true	
	validates :price, numericality: true	
	validates :amount, numericality: true	
end
