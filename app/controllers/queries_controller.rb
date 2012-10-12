class QueriesController < ApplicationController
  # GET /queries
  # GET /queries.json
  def index
    @queries = Query.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @queries }
    end
  end

  # GET /queries/1
  # GET /queries/1.json
  def show
    @query = Query.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @query }
    end
  end

  # GET /queries/new
  # GET /queries/new.json
  def new
    @query = Query.new
    @bussiness_plan = BussinessPlan.find(params[:format])
    @wise = Wise.find(@bussiness_plan.wise_id)
    @user =User.find(@wise.user_id)
    

    #respond_to do |format|
    #  format.html # new.html.erb
    #  format.json { render json: @query }
    #end
  end

  # GET /queries/1/edit
  def edit
    @query = Query.find(params[:id])
     @bussiness_plan = BussinessPlan.find(@query.bussiness_plan_id)
    @wise = Wise.find(@query.wise_id)
    @user =User.find(@wise.user_id)

  end

  # POST /queries
  # POST /queries.json
  def create
    
    #Los queries son creados unicamente por los emprendedores
    params[:query][:entrepreneur_id] = 2 
    #El estado 1 significa que aun no esta respondido
    params[:query][:status] = 1
    #debo sacar el id de sabio del plan de negocio
    @query = Query.new(params[:query])
    
    sWiseName = params[:wise_name][:no]

    respond_to do |format|
      if @query.save
        format.html { redirect_to @query, notice: 'Query was successfully created, wise '+sWiseName+' will respond shortly.' }
        format.json { render json: @query, status: :created, location: @query }
      else
        format.html { render action: "new" }
        format.json { render json: @query.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /queries/1
  # PUT /queries/1.json
  def update
    @query = Query.find(params[:id])

    respond_to do |format|
      if @query.update_attributes(params[:query])
        format.html { redirect_to @query, notice: 'Query was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @query.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /queries/1
  # DELETE /queries/1.json
  def destroy
    @query = Query.find(params[:id])
    @query.destroy

    respond_to do |format|
      format.html { redirect_to queries_url }
      format.json { head :no_content }
    end
  end
end
