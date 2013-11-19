class PostsController < ActionController::Base
    before_filter :authenticate_user!

    def index
    	@posts = Post.where("user_id=?", current_user.id)
    	@post = Post.new
    end

    def create
    	@post = Post.new(params[:post])
    	@post.user_id = current_user.id

    	if @post.save
   			 redirect_to posts_path, notice: 'Role was successfully updated.' 
    	end
    end
end
