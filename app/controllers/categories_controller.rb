class CategoriesController < ApplicationController
	def index
		@categories = Category.all
	end

	def edit

	end

	def new
		@category = Category.new

	end

	def create 
	  	@category = Category.new(category_params)
		if @category.save
			redirect_to categories_path
		else
			rednder "new"
		end
	end

	def show

	end

	def category_params
		params.require(:category).permit(:name)
	end

end
