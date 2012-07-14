class BangunansController < ApplicationController
  #ALREADY TEST COYY!! 15/07/2012 23.30
  # GET /bangunans
  # GET /bangunans.json
  def index
    @bangunans = Bangunan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bangunans }
    end
  end

  # GET /bangunans/1
  # GET /bangunans/1.json
  def show
    @bangunan = Bangunan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bangunan }
    end
  end

  # GET /bangunans/new
  # GET /bangunans/new.json
  def new
    @bangunan = Bangunan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bangunan }
    end
  end

  # GET /bangunans/1/edit
  def edit
    @bangunan = Bangunan.find(params[:id])
  end

  # POST /bangunans
  # POST /bangunans.json
  def create
    @bangunan = Bangunan.new(params[:bangunan])

    respond_to do |format|
      if @bangunan.save
        format.html { redirect_to @bangunan, notice: 'Bangunan was successfully created.' }
        format.json { render json: @bangunan, status: :created, location: @bangunan }
      else
        format.html { render action: "new" }
        format.json { render json: @bangunan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bangunans/1
  # PUT /bangunans/1.json
  def update
    @bangunan = Bangunan.find(params[:id])

    respond_to do |format|
      if @bangunan.update_attributes(params[:bangunan])
        format.html { redirect_to @bangunan, notice: 'Bangunan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bangunan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bangunans/1
  # DELETE /bangunans/1.json
  def destroy
    @bangunan = Bangunan.find(params[:id])
    @bangunan.destroy

    respond_to do |format|
      format.html { redirect_to bangunans_url }
      format.json { head :no_content }
    end
  end
end
