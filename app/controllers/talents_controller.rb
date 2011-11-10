class TalentsController < ApplicationController
  # GET /talents
  # GET /talents.json
  def index
    @talents = Talent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @talents }
    end
  end

  # GET /talents/1
  # GET /talents/1.json
  def show
    @talent = Talent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @talent }
    end
  end

  # GET /talents/new
  # GET /talents/new.json
  def new
    @talent = Talent.new
    @types = Type.all
    
    respond_to do |format|
      format.html 
      format.json { render :json => @talent }
    end
  end

  # GET /talents/1/edit
  def edit
    @talent = Talent.find(params[:id])
  end

  # POST /talents
  # POST /talents.json
  def create
    @talent = Talent.new(params[:talent])

    respond_to do |format|
      if @talent.save
        format.html { redirect_to @talent, :notice => 'Talent was successfully created.' }
        format.json { render :json => @talent, :status => :created, :location => @talent }
      else
        format.html { render :action => "new" }
        format.json { render :json => @talent.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /talents/1
  # PUT /talents/1.json
  def update
    @talent = Talent.find(params[:id])
    
    # Check if the array exists
    if params[:talent][:skill_ids]
      # Unset skills that have not been selected
      params[:talent][:skill_ids] ||= []
    else
      # if the array doesn't exist then delete all the skills associated
      # If it doesn't exist then the user un-checked all the skills
      @talent.skills.delete_all
    end      
    
    respond_to do |format|
      if @talent.update_attributes(params[:talent])
        format.html { redirect_to @talent, :notice => 'Talent was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @talent.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /talents/1
  # DELETE /talents/1.json
  def destroy
    @talent = Talent.find(params[:id])
    @talent.destroy

    respond_to do |format|
      format.html { redirect_to talents_url }
      format.json { head :ok }
    end
  end
end
