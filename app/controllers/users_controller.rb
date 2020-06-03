class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to edit_user_path(user)
  end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end
end
