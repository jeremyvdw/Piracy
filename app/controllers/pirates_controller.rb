class PiratesController < ApplicationController
  # GET /pirates
  # GET /pirates.xml
  def index
    @pirates = Pirate.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pirates }
    end
  end

  # GET /pirates/1
  # GET /pirates/1.xml
  def show
    @pirate = Pirate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pirate }
    end
  end

  # GET /pirates/new
  # GET /pirates/new.xml
  def new
    @pirate = Pirate.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pirate }
    end
  end

  # GET /pirates/1/edit
  def edit
    @pirate = Pirate.find(params[:id])
  end

  # POST /pirates
  # POST /pirates.xml
  def create
    @pirate = Pirate.new(params[:pirate])

    respond_to do |format|
      if @pirate.save
        format.html { redirect_to(@pirate, :notice => 'Pirate was successfully created.') }
        format.xml  { render :xml => @pirate, :status => :created, :location => @pirate }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pirate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pirates/1
  # PUT /pirates/1.xml
  def update
    @pirate = Pirate.find(params[:id])

    respond_to do |format|
      if @pirate.update_attributes(params[:pirate])
        format.html { redirect_to(@pirate, :notice => 'Pirate was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pirate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pirates/1
  # DELETE /pirates/1.xml
  def destroy
    @pirate = Pirate.find(params[:id])
    @pirate.destroy

    respond_to do |format|
      format.html { redirect_to(pirates_url) }
      format.xml  { head :ok }
    end
  end
end
