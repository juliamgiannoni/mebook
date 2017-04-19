class UsersController < ApplicationController

  def create

  end

  def edit

  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :image)
    end
end
