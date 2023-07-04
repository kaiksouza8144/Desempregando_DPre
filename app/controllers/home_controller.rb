class HomeController < ApplicationController
  def index
    binding.pry
    @q = Position.ransack(params[:q])
    @positions = @q.result.page(params[:page]).per(params[:per])
    @contracts = [['CLT', 0], ['PJ', 1], ['A combinar', 2]]
  end
end
