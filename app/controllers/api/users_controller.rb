class Api::UsersController < Api::BaseController
  skip_before_filter :verify_authenticity_token 

  def create
    @user = User.create! user_params
    render status: :created
  end

  def destroy
    User.find(params[:id]).destroy
    render status: :ok, nothing: true
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    User.find(params[:id]).update user_params
    render status: :ok, nothing: true
  end

  private

  def user_params
    params.require(:user).permit(:name, :team_id)
  end
end
