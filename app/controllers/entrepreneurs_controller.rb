class EntrepreneursController < ApplicationController
  # GET /entrepreneurs
  # GET /entrepreneurs.json
  def index
    @entrepreneurs = Entrepreneur.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @entrepreneurs }
    end
  end

  # GET /entrepreneurs/1
  # GET /entrepreneurs/1.json
  def show
    @entrepreneur = Entrepreneur.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @entrepreneur }
    end
  end

  # GET /entrepreneurs/new
  # GET /entrepreneurs/new.json
  def new
    @user = User.new
    @entrepreneur = Entrepreneur.new
    @arregloSexo = ["masculino","femenino"]
    @arregloTypeDoc = ["DNI","L.E","Carnet Univesitario"]
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @entrepreneur }
    end
  end

  # GET /entrepreneurs/1/edit
  def edit
    @entrepreneur = Entrepreneur.find(params[:id])
    @user =User.find(@entrepreneur.user_id)
    @arregloSexo = ["masculino","femenino"]
    @arregloTypeDoc = ["DNI","L.E","Carnet Univesitario"]
  end

  # POST /entrepreneurs
  # POST /entrepreneurs.json

 def create
  abort("aca")
    @user = User.new(params[:user])
    @arregloSexo = ["masculino","femenino"]    
    @arregloTypeDoc = ["DNI","L.E","Carnet Univesitario"]
    #abort("usercreate")
    respond_to do |format|
      if @user.save
        @entrepreneur = Entrepreneur.new(:user_id => @user.id, :guy => 2)
        if @entrepreneur.save
        format.html { redirect_to @entrepreneur, :notice => 'Entrepreneur was successfully created.' }
        format.json { render :json => @entrepreneur, :status => :created, :location => @entrepreneur }
      else
        format.html { render :action => "new" }
        format.json { render :json => @entrepreneur.errors, :status => :unprocessable_entity }
      end
    end
    end
  end

#=========================================================================================




  # PUT /entrepreneurs/1
  # PUT /entrepreneurs/1.json
  def update
    @entrepreneur = Entrepreneur.find(params[:id])
    @user = User.find(@entrepreneur.user_id)

   if @user.update_attributes(params[:user])  
    respond_to do |format|
      if @entrepreneur.update_attributes(params[:entrepreneur])
        format.html { redirect_to @entrepreneur, :notice => 'Entrepreneur was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @entrepreneur.errors, :status => :unprocessable_entity }
      end
    end
   end
  end

  # DELETE /entrepreneurs/1
  # DELETE /entrepreneurs/1.json
  def destroy
    @entrepreneur = Entrepreneur.find(params[:id])
    @user = User.find(@entrepreneur.user_id)
    @entrepreneur.destroy
    @user.destroy
 
    respond_to do |format|
      format.html { redirect_to entrepreneurs_url }
      format.json { head :no_content }
    end
  end
end
