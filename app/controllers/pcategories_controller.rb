class PcategoriesController < ApplicationController
  # GET /pcategories
  # GET /pcategories.json
  def index
    @pcategories = Pcategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pcategories }
    end
  end

  # GET /pcategories/1
  # GET /pcategories/1.json
  def show
    @pcategory = Pcategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pcategory }
    end
  end

  # GET /pcategories/new
  # GET /pcategories/new.json
  def new
    @pcategory = Pcategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pcategory }
    end
  end

  # GET /pcategories/1/edit
  def edit
    @pcategory = Pcategory.find(params[:id])
  end

  # POST /pcategories
  # POST /pcategories.json
  def create
    @pcategory = Pcategory.new(params[:pcategory])

    respond_to do |format|
      if @pcategory.save
        format.html { redirect_to @pcategory, notice: 'La categoria se creo satisfactoriamente.' }
        format.json { render json: @pcategory, status: :created, location: @pcategory }
      else
        format.html { render action: "new" }
        format.json { render json: @pcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pcategories/1
  # PUT /pcategories/1.json
  def update
    @pcategory = Pcategory.find(params[:id])

    respond_to do |format|
      if @pcategory.update_attributes(params[:pcategory])
        format.html { redirect_to @pcategory, notice: 'La categoria se modifico satisfactoriamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pcategories/1
  # DELETE /pcategories/1.json
  def destroy
    @pcategory = Pcategory.find(params[:id])
    @pcategory.destroy

    respond_to do |format|
      format.html { redirect_to pcategories_url }
      format.json { head :no_content }
    end
  end
end
