class BussinessPlansController < ApplicationController
  # GET /bussiness_plans
  # GET /bussiness_plans.json
  
  def index
    @bussiness_plans = BussinessPlan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bussiness_plans }
    end
  end

  # GET /bussiness_plans/1
  # GET /bussiness_plans/1.json
  def show
    @bussiness_plan = BussinessPlan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bussiness_plan }
    end
  end

  # GET /bussiness_plans/new
  # GET /bussiness_plans/new.json
  def new
    @bussiness_plan = BussinessPlan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bussiness_plan }
    end
  end

  # GET /bussiness_plans/1/edit
  def edit
    @bussiness_plan = BussinessPlan.find(params[:id])
  end

  # POST /bussiness_plans
  # POST /bussiness_plans.json
  def create
    @bussiness_plan = BussinessPlan.new(params[:bussiness_plan])

    respond_to do |format|
      if @bussiness_plan.save
        format.html { redirect_to @bussiness_plan, notice: 'Bussiness plan was successfully created.' }
        format.json { render json: @bussiness_plan, status: :created, location: @bussiness_plan }
      else
        format.html { render action: "new" }
        format.json { render json: @bussiness_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bussiness_plans/1
  # PUT /bussiness_plans/1.json
  def update
    @bussiness_plan = BussinessPlan.find(params[:id])

    respond_to do |format|
      if @bussiness_plan.update_attributes(params[:bussiness_plan])
        format.html { redirect_to @bussiness_plan, notice: 'Bussiness plan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bussiness_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bussiness_plans/1
  # DELETE /bussiness_plans/1.json
  def destroy
    @bussiness_plan = BussinessPlan.find(params[:id])
    @bussiness_plan.destroy

    respond_to do |format|
      format.html { redirect_to bussiness_plans_url }
      format.json { head :no_content }
    end
  end
end
