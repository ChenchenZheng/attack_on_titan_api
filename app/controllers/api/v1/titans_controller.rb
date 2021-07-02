class Api::V1::TitansController < Api::V1::BaseController
  before_action :set_titan, only: [:show]

  def index
    @titans = Titan.all.order(:id)
  end

  def show
  end

  private

  def set_titan
    @titan = Titan.find(params[:id])
  end
end
