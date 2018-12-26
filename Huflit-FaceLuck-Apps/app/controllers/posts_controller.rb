class PostsController < ApplicationController
    def index
        @post = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.create(post_params)
        

        if @post.save
            #Hiện thông báo
            flash[:success] = "Article was successfully created"
            redirect_to posts_path
        else
            flash[:error] = @post.errors.full_messages
        end
    end

    private
    def post_params
        params.require(:post).permit(:image, :description)
    end
    
end
