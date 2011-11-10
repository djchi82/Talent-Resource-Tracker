class SkillSetsController < ApplicationController
  # GET /skill_sets
  # GET /skill_sets.json
  def index
    @skill_sets = SkillSet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @skill_sets }
    end
  end

  # GET /skill_sets/1
  # GET /skill_sets/1.json
  def show
    @skill_set = SkillSet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @skill_set }
    end
  end

  # GET /skill_sets/new
  # GET /skill_sets/new.json
  def new
    @skill_set = SkillSet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @skill_set }
    end
  end

  # GET /skill_sets/1/edit
  def edit
    @skill_set = SkillSet.find(params[:id])
  end

  # POST /skill_sets
  # POST /skill_sets.json
  def create
    @skill_set = SkillSet.new(params[:skill_set])

    respond_to do |format|
      if @skill_set.save
        format.html { redirect_to @skill_set, :notice => 'Skill set was successfully created.' }
        format.json { render :json => @skill_set, :status => :created, :location => @skill_set }
      else
        format.html { render :action => "new" }
        format.json { render :json => @skill_set.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /skill_sets/1
  # PUT /skill_sets/1.json
  def update
    @skill_set = SkillSet.find(params[:id])

    # Check if the array exists
    if params[:skill_set][:skill_ids]
      # Unset skills that have not been selected
      params[:skill_set][:skill_ids] ||= []
    else
      # if the array doesn't exist then delete all the skills associated
      # If it doesn't exist then the user un-checkedall the skills
      @skill_set.skills.delete_all
    end  
    
    respond_to do |format|
      if @skill_set.update_attributes(params[:skill_set])
        format.html { redirect_to @skill_set, :notice => 'Skill set was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @skill_set.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /skill_sets/1
  # DELETE /skill_sets/1.json
  def destroy
    @skill_set = SkillSet.find(params[:id])
    @skill_set.destroy

    respond_to do |format|
      format.html { redirect_to skill_sets_url }
      format.json { head :ok }
    end
  end
end
