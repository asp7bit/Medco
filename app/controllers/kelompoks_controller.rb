class KelompoksController < ApplicationController
  # GET /kelompoks
  # GET /kelompoks.json
  def index
    @kelompoks = Kelompok.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kelompoks }
    end
  end

  # GET /kelompoks/1
  # GET /kelompoks/1.json
  def show
    @kelompok = Kelompok.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @kelompok }
    end
  end

  # GET /kelompoks/new
  # GET /kelompoks/new.json
  def new
    @kelompok = Kelompok.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kelompok }
    end
  end

  # GET /kelompoks/1/edit
  def edit
    @kelompok = Kelompok.find(params[:id])
  end

  # POST /kelompoks
  # POST /kelompoks.json
  def create
    @kelompok = Kelompok.new(params[:kelompok])

    respond_to do |format|
      if @kelompok.save
        format.html { redirect_to @kelompok, notice: 'Kelompok was successfully created.' }
        format.json { render json: @kelompok, status: :created, location: @kelompok }
      else
        format.html { render action: "new" }
        format.json { render json: @kelompok.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kelompoks/1
  # PUT /kelompoks/1.json
  def update
    @kelompok = Kelompok.find(params[:id])

    respond_to do |format|
      if @kelompok.update_attributes(params[:kelompok])
        format.html { redirect_to @kelompok, notice: 'Kelompok was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @kelompok.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kelompoks/1
  # DELETE /kelompoks/1.json
  def destroy
    @kelompok = Kelompok.find(params[:id])
    @kelompok.destroy

    respond_to do |format|
      format.html { redirect_to kelompoks_url }
      format.json { head :no_content }
    end
  end
end
