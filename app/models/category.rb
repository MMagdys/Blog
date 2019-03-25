class Category < ApplicationRecord

	def category_params
		params.require(:category).permit(:name)
	end
	has_many :posts
end
