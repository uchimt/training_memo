class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'ユーザーを登録しました。'
      redirect_to root_path
    else
      flash.now[:danger] = 'ユーザーの登録に失敗しました。'
      render :new
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end
  
  private
 
    def user_params
      params.require(:user).permit(:nickname, :email, :password, :password_confirmation)
    end
end
