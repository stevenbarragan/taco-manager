class Api::TeamsController < Api::BaseController
  skip_before_filter :verify_authenticity_token 

	def create
    @team = Team.create! team_params
    render status: :created
  end

  def destroy
    Team.find(params[:id]).destroy
    render status: :ok, nothing: true
  end

  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def update
    Team.find(params[:id]).update team_params
    render status: :ok, nothing: true
  end

  private

  def team_params
    params.require(:team).permit(:name)
  end
end
