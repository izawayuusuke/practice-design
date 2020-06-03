class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  def index
  end

  def show
  end

  def edit
  end

  def update
    user.update(user_params)
    redirect_to edit_user_path(user)
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email, :password)
    end
end
