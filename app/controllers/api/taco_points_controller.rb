class Api::TacoPointsController < Api::BaseController
	def create
    @taco_point = TacoPoint.create! taco_point_params
    render status: :created
  end

  def destroy
    TacoPoint.find(params[:id]).destroy
    render status: :ok, nothing: true
  end

  private

  def taco_point_params
    params.require(:taco_point).permit(:user_id, :description)
  end
end
