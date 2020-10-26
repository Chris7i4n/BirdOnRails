class ProfileController < ApplicationController
  before_action :set_user_visited_profile, only: [:index]

  def index
    @posts = Post.where(user_id: @visited_profile_user)
    @post = Post.new
    @comment = Comment.new
  end
  
  def toggle_follow
    if current_user.following?(User.find(params[:id]))
      current_user.unfollow(User.find(params[:id]))
    else
      current_user.follow(User.find(params[:id]))
    end
  end





  private
    
    def set_user_visited_profile
      @visited_profile_user = User.find(params[:id])
    end
end
