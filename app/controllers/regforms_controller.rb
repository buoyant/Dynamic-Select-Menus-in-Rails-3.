class RegformsController < ApplicationController
  # GET /regforms
  # GET /regforms.xml
  def index
    @regforms = Regform.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @regforms }
    end
  end

  # GET /regforms/1
  # GET /regforms/1.xml
  def show
    @regform = Regform.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @regform }
    end
  end

  # GET /regforms/new
  # GET /regforms/new.xml
  def new
    @regform = Regform.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @regform }
    end
  end

  # GET /regforms/1/edit
  def edit
    @regform = Regform.find(params[:id])
  end

  # POST /regforms
  # POST /regforms.xml
  def create
    @regform = Regform.new(params[:regform])

    respond_to do |format|
      if @regform.save
        format.html { redirect_to(@regform, :notice => 'Regform was successfully created.') }
        format.xml  { render :xml => @regform, :status => :created, :location => @regform }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @regform.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /regforms/1
  # PUT /regforms/1.xml
  def update
    @regform = Regform.find(params[:id])

    respond_to do |format|
      if @regform.update_attributes(params[:regform])
        format.html { redirect_to(@regform, :notice => 'Regform was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @regform.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /regforms/1
  # DELETE /regforms/1.xml
  def destroy
    @regform = Regform.find(params[:id])
    @regform.destroy

    respond_to do |format|
      format.html { redirect_to(regforms_url) }
      format.xml  { head :ok }
    end
  end

  def dynamic_districts
    @districts = District.find_all_by_state_id(params[:id])

    respond_to do |format|
      format.js
    end
  end

end

