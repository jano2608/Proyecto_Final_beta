class UsersController < ApplicationController
  def index
    @userpost = Post.where(user_id: current_user)
  end
end
