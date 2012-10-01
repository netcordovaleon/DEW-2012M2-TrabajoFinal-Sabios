class BussinessPlanMosController < ApplicationController
  # GET /bussiness_plans
  # GET /bussiness_plans.json
  def index
    @bussiness_plans = BussinessPlan.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bussiness_plans }
    end
  end
end
