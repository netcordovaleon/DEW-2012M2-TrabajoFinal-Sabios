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
  
  # GET /bussiness_plans/1/ver
  def edit
    @bussiness_plan = BussinessPlan.find(params[:id])
  end
  
  def change_status
  	  @bussiness_plan = BussinessPlan.find(params[:id])
  	  @bussiness_plan.update_attributes(params[:bussiness_plan])
  end 
  	  
end
