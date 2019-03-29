class PostsController < ApplicationController

	def index
		# @search = Post.search(params[:search])
		@posts = Post.all
		@categories = Category.all
		# @first_body = "This is the first post body"
		# @second_body = "This is the Second post body"

	end


	def show

		@post = Post.find(params[:id])

	end


	def new

		@post = Post.new
		@category = Category.all
	end


	def create

		@post = Post.new(post_params)
		if @post.save
			redirect_to posts_path, :notice => "Your post has been saved!"

		else
			render "new"
		end

	end


	def edit

		@post = Post.find(params[:id])

	end


	def update
		@post = Post.find(params[:id])

		if @post.update_attributes(post_params)
			redirect_to post_path
		else
			render "edit"
		end
	end


	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to posts_path

	end

	def post_params
		params.require(:post).permit(:title, :body, :category_id, :author_id)
	end

end
