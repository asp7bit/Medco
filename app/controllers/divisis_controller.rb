class DivisisController < ApplicationController
  # GET /divisis
  # GET /divisis.json
  def index
    @divisis = Divisi.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @divisis }
    end
  end

  # GET /divisis/1
  # GET /divisis/1.json
  def show
    @divisi = Divisi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @divisi }
    end
  end

  # GET /divisis/new
  # GET /divisis/new.json
  def new
    @divisi = Divisi.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @divisi }
    end
  end

  # GET /divisis/1/edit
  def edit
    @divisi = Divisi.find(params[:id])
  end

  # POST /divisis
  # POST /divisis.json
  def create
    @divisi = Divisi.new(params[:divisi])

    respond_to do |format|
      if @divisi.save
        format.html { redirect_to @divisi, notice: 'Divisi was successfully created.' }
        format.json { render json: @divisi, status: :created, location: @divisi }
      else
        format.html { render action: "new" }
        format.json { render json: @divisi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /divisis/1
  # PUT /divisis/1.json
  def update
    @divisi = Divisi.find(params[:id])

    respond_to do |format|
      if @divisi.update_attributes(params[:divisi])
        format.html { redirect_to @divisi, notice: 'Divisi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @divisi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /divisis/1
  # DELETE /divisis/1.json
  def destroy
    @divisi = Divisi.find(params[:id])
    @divisi.destroy

    respond_to do |format|
      format.html { redirect_to divisis_url }
      format.json { head :no_content }
    end
  end
end
