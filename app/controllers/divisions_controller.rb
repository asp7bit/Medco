class DivisionsController < ApplicationController
before_filter :signed_in_user
  helper_method :sort_column, :sort_direction
  # GET /divisis
  # GET /divisis.json
  def index
    @divisions = Division.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 15, :page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @divisions }
    end
  end

  # GET /divisis/1
  # GET /divisis/1.json
  def show
    @division = Division.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @division }
    end
  end

  # GET /divisis/new
  # GET /divisis/new.json
  def new
    @division = Division.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @division }
    end
  end

  # GET /divisis/1/edit
  def edit
    @division = Division.find(params[:id])
  end

  # POST /divisis
  # POST /divisis.json
  def create
    @division = Division.new(params[:division])

    respond_to do |format|
      if @division.save
        format.html { redirect_to @division, notice: 'Divisi was successfully created.' }
        format.json { render json: @division, status: :created, location: @division }
      else
        format.html { render action: "new" }
        format.json { render json: @division.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /divisis/1
  # PUT /divisis/1.json
  def update
    @division = Division.find(params[:id])

    respond_to do |format|
      if @division.update_attributes(params[:division])
        format.html { redirect_to @division, notice: 'Divisi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @division.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /divisis/1
  # DELETE /divisis/1.json
  def destroy
    @division = Division.find(params[:id])
    @division.destroy

    respond_to do |format|
      format.html { redirect_to divisions_url }
      format.json { head :no_content }
    end
  end
  
  private
	#sorting column divisi
   def sort_column
     Division.column_names.include?(params[:sort]) ? params[:sort] : "kode"
   end
  
  #managing asc and desc
    def sort_direction
      %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
    end
end
