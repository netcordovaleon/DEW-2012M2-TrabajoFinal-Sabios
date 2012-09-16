class WisesController < ApplicationController
  # GET /wises
  # GET /wises.json
  def index
    @wises = Wise.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @wises }
    end
  end

  # GET /wises/1
  # GET /wises/1.json
  def show
    @wise = Wise.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @wise }
    end
  end

  # GET /wises/new
  # GET /wises/new.json
  def new
    @wise = Wise.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @wise }
    end
  end

  # GET /wises/1/edit
  def edit
    @wise = Wise.find(params[:id])
  end

  # POST /wises
  # POST /wises.json
  def create
    @wise = Wise.new(params[:wise])

    respond_to do |format|
      if @wise.save
        format.html { redirect_to @wise, :notice => 'Wise was successfully created.' }
        format.json { render :json => @wise, :status => :created, :location => @wise }
      else
        format.html { render :action => "new" }
        format.json { render :json => @wise.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /wises/1
  # PUT /wises/1.json
  def update
    @wise = Wise.find(params[:id])

    respond_to do |format|
      if @wise.update_attributes(params[:wise])
        format.html { redirect_to @wise, :notice => 'Wise was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @wise.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /wises/1
  # DELETE /wises/1.json
  def destroy
    @wise = Wise.find(params[:id])
    @wise.destroy

    respond_to do |format|
      format.html { redirect_to wises_url }
      format.json { head :no_content }
    end
  end
end
