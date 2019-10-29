class LikesController < ApplicationController
    def matches

        @likes = Likes.all
    end
    
    def create
       @like = Like.new
       @like.post = Post.find(params[:post_id])
       @like.user=current_user
       @like.match = true
       @like.save
       redirect_to posts_path 
    end
    
end
