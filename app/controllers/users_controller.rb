class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
end
def contributor_confirmation
  redirect_to root_path unless current_user == @prototype.user
end