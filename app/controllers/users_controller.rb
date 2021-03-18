class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find_by(id: params[:id])
  end

  def index
    @users = User.where.not(id: current_user.id)
    @user = User.find(current_user.id)
  end
end
