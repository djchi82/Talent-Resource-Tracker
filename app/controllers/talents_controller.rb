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
    @changed_type_id = params[:talent][:type_id]
    
    if @talent.type_id.to_i != @changed_type_id.to_i
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

  # put /talents/1/get_skills
  def get_skills
    @talent = Talent.find(params[:talent_id])
  end
  
  #PUTS /talents/1
  #PUTS /talents/1.json
  def set_skills

    @talent = Talent.find(params[:talent_id])    
    begin
      params[:talent][:skill_ids] ||= []  
    rescue NoMethodError
      @talent.skills.delete_all
    end
  
    if @talent.update_attributes params[:talent]
      redirect_to @talent
    else
      flash.now[:error] = @talent.errors
      #setup_form_values
      respond_to do |format|
        format.html { render :action => get_skills }
      end
    end
  end

end
