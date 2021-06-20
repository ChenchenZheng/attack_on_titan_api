class Api::V1::TitansController < Api::V1::BaseController
  def index
    @titans = Titan.all
  end
end
