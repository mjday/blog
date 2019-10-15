class UsersController < ApplicationController
  def new
    @user = User.new
    # debugger
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to mysauna.io"
      redirect_to user_url(@user)
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end


  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
