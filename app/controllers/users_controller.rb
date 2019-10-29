class UsersController < ApplicationController
  def index
    @userposts = Post.where(user_id: current_user)
  end


  
end
