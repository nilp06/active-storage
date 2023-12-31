class UsersController < ApplicationController
  before_action :set_user, only: %i[edit destroy show update]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user), flash: { success: 'User is created.' }
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user), flash: { success: 'User is updated.' }
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy

    redirect_to users_path, flash: { success: 'User is Deleted.' }
  end

  def show; end

  private

  def user_params
    params.require(:user).permit(:name, :email, :avtar)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
