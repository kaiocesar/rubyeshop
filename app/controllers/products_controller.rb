class ProductsController < ApplicationController
	def index
		@products = Product.order(:name).limit 25
	end

	def create
	end

	def store
		product_data = params.require(:product).permit :name, :price, :amount, :description
		product = Product.create product_data
		redirect_to "/products"
	end
	

	def remove
		id = params.require(:id)
		Product.destroy id
		redirect_to "/products"
	end

	def edit
		id = params.require(:id)
		@product = Product.find_by id: id
	end

	def update
		p_data = params.require(:product).permit :name, :price, :amount, :description, :id
		product = Product.update p_data[:id], :name => p_data[:name], :price => p_data[:price], :amount => p_data[:amount], :description => p_data[:description] 
		redirect_to "/products"
	end

	def search
		search = "%#{params[:s]}%"
		@products = Product.where "name like ?", search
	end

end
