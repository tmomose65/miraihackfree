class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "会員登録完了"
      render 'static_pages/home'
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email, :password,
                                 :password_confirmation,:applicant_branch_no, :applicant_account_no)
  end
end
