class Gategory < ApplicationRecord

	def category_params
		params.require(:gategory).permit(:name)
	end
	has_many :posts
end
