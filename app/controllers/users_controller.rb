class UsersController < Clearance::UsersController
  def show
    @user = User.find(params[:id])
    @megaphones = @user.megaphones
  end

  def new
    @user = User.new
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
