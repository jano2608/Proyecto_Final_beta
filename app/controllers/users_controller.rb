class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @userposts = Post.where(user_id: current_user)
  end
end
