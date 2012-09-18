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
    @user =User.find(@wise.user_id)
  end

  # POST /wises
  # POST /wises.json
  # POST /users
  # POST /users.json
  def create
  #ederrafo seteo como nuevo
  @user = User.new(params[:user])
#"wise"=>{"website"=>"qq",
# "apellation"=>"narizon nuevo",
# "banck_account"=>"qqq0",
# "bank"=>"qqqq",
# "summary"=>"sumarrrrrrrry"},
  if @user.save
  #@wise = Wise.new(:website=>"qq",
  #                :apellation=>"medicos",
  #                :banck_account=>"ellos",
  #                :bank=>"casa BCPqqq",
  #                :user_id =>@user.id,
  #                :summary=>"ssasasasaasd sdadasd asdumarrrrrrrry")
  @wise = Wise.new(:website => params[:wise][:website],
                  :apellation => params[:wise][:apellation],
                  :banck_account => params[:wise][:banck_account],
                  :bank => params[:wise][:bank],
                  :user_id => @user.id,
                  :summary => params[:wise][:summary])
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
  
    #@user = User.new
    #@wise = Wise.new(params[:wise])
 
 # Wise.new(:appellation => "cabezon")

  #  abort("xxx");

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
