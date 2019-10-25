class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new 
  end

  def edit
  end

  def create
    @user = user.create(user_params)
    if @user.save
      redirect_to user_index_path
    # else
      # flash[:error]
    end
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :address)
  end
end
