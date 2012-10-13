#class UsersController < ApplicationController
class UsersController < InheritedResources::Base
 

  # GET /users
  # GET /users.json
  def index
    @users = User.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show

    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end


  # POST /users
  # POST /users.json
  def create
    @guy =  params[:user][:guy];
    @arregloSexo = ["masculino","femenino"]
    @arregloTypeDoc = ["DNI","L.E","Carnet Univesitario"]
    if (@guy == "1")  
      @wise = Wise.new
    end
    @user = User.new(params[:user])
    respond_to do |format|
      if @user.save
        
        if (@guy == "2")
          @entrepreneur = Entrepreneur.new(:user_id => @user.id)
          @entrepreneur.save
          message = 'entrepreneurs '
          @redirect = @entrepreneur
        elsif (@guy =="1")
           @wise = Wise.new(:website => params[:wise][:website],
                  :apellation => params[:wise][:apellation],
                  :banck_account => params[:wise][:banck_account],
                  :bank => params[:wise][:bank],
                  :user_id => @user.id,
                  :summary => params[:wise][:summary]
                  )
          @wise.save
          message ='wise'
          @redirect = @wise
        end
          


        format.html { redirect_to @redirect, :notice => 'User '+ message +' was successfully created.' }
        format.json { render :json => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, :notice => 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
end
