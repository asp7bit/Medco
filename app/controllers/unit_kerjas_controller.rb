class UnitKerjasController < ApplicationController
  # GET /unit_kerjas
  # GET /unit_kerjas.json
  def index
    @unit_kerjas = UnitKerja.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @unit_kerjas }
    end
  end

  # GET /unit_kerjas/1
  # GET /unit_kerjas/1.json
  def show
    @unit_kerja = UnitKerja.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @unit_kerja }
    end
  end

  # GET /unit_kerjas/new
  # GET /unit_kerjas/new.json
  def new
    @unit_kerja = UnitKerja.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @unit_kerja }
    end
  end

  # GET /unit_kerjas/1/edit
  def edit
    @unit_kerja = UnitKerja.find(params[:id])
  end

  # POST /unit_kerjas
  # POST /unit_kerjas.json
  def create
    @unit_kerja = UnitKerja.new(params[:unit_kerja])

    respond_to do |format|
      if @unit_kerja.save
        format.html { redirect_to @unit_kerja, notice: 'Unit kerja was successfully created.' }
        format.json { render json: @unit_kerja, status: :created, location: @unit_kerja }
      else
        format.html { render action: "new" }
        format.json { render json: @unit_kerja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /unit_kerjas/1
  # PUT /unit_kerjas/1.json
  def update
    @unit_kerja = UnitKerja.find(params[:id])

    respond_to do |format|
      if @unit_kerja.update_attributes(params[:unit_kerja])
        format.html { redirect_to @unit_kerja, notice: 'Unit kerja was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @unit_kerja.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unit_kerjas/1
  # DELETE /unit_kerjas/1.json
  def destroy
    @unit_kerja = UnitKerja.find(params[:id])
    @unit_kerja.destroy

    respond_to do |format|
      format.html { redirect_to unit_kerjas_url }
      format.json { head :no_content }
    end
  end
end
