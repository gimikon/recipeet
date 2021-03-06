class RelationshipsController < ApplicationController

# follow relationship
  def create
    @user = User.find(params[:followed_id])
    @current_user.follow(@user)
    redirect_to posts_path
  end

# unfollow
  def destroy
    @user = Relationship.find(params[:id]).followed
    @current_user.unfollow(@user)
    redirect_to posts_path
  end

end
