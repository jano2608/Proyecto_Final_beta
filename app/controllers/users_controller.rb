class UsersController < ApplicationController
  def index
    @post = Post.where(user_id: current_user)
  end
end
