class ProfessionalsController < ApplicationController
  # GET /professionals
  # GET /professionals.xml
  def index
    @professionals = Professional.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @professionals }
    end
  end

  # GET /professionals/1
  # GET /professionals/1.xml
  def show
    @professional = Professional.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @professional }
    end
  end

  # GET /professionals/new
  # GET /professionals/new.xml
  def new
    @professional = Professional.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @professional }
    end
  end

  # GET /professionals/1/edit
  def edit
    @professional = Professional.find(params[:id])
  end

  # POST /professionals
  # POST /professionals.xml
  def create
    @professional = Professional.new(params[:professional])

    respond_to do |format|
      if @professional.save
        flash[:notice] = 'Professional was successfully created.'
        format.html { redirect_to(@professional) }
        format.xml  { render :xml => @professional, :status => :created, :location => @professional }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @professional.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /professionals/1
  # PUT /professionals/1.xml
  def update
    @professional = Professional.find(params[:id])

    respond_to do |format|
      if @professional.update_attributes(params[:professional])
        flash[:notice] = 'Professional was successfully updated.'
        format.html { redirect_to(@professional) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @professional.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /professionals/1
  # DELETE /professionals/1.xml
  def destroy
    @professional = Professional.find(params[:id])
    @professional.destroy

    respond_to do |format|
      format.html { redirect_to(professionals_url) }
      format.xml  { head :ok }
    end
  end
end
