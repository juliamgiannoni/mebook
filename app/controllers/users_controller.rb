class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])

    puts @user.first_name
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def edit

  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :image)
    end

end
