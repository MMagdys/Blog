class Post < ApplicationRecord

	def post_params
		params.require(:post).permit(:title, :body, :category_id, :author_id)
	end
	# attr_accessible :name, :body, :category_id, :author_id
	belongs_to :category
end
