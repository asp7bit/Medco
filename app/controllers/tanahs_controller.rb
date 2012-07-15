class TanahsController < ApplicationController
  helper_method :sort_column, :sort_direction
  # GET /tanahs
  # GET /tanahs.json
  def index
    @tanahs = Tanah.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 15, :page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tanahs }
    end
  end

  # GET /tanahs/1
  # GET /tanahs/1.json
  def show
    @tanah = Tanah.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tanah }
    end
  end

  # GET /tanahs/new
  # GET /tanahs/new.json
  def new
    @tanah = Tanah.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tanah }
    end
  end

  # GET /tanahs/1/edit
  def edit
    @tanah = Tanah.find(params[:id])
  end

  # POST /tanahs
  # POST /tanahs.json
  def create
    @tanah = Tanah.new(params[:tanah])

    respond_to do |format|
      if @tanah.save
        format.html { redirect_to @tanah, notice: 'Tanah was successfully created.' }
        format.json { render json: @tanah, status: :created, location: @tanah }
      else
        format.html { render action: "new" }
        format.json { render json: @tanah.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tanahs/1
  # PUT /tanahs/1.json
  def update
    @tanah = Tanah.find(params[:id])

    respond_to do |format|
      if @tanah.update_attributes(params[:tanah])
        format.html { redirect_to @tanah, notice: 'Tanah was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tanah.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tanahs/1
  # DELETE /tanahs/1.json
  def destroy
    @tanah = Tanah.find(params[:id])
    @tanah.destroy

    respond_to do |format|
      format.html { redirect_to tanahs_url }
      format.json { head :no_content }
    end
  end
  
  private
	#sorting column tanah
   def sort_column
     Tanah.column_names.include?(params[:sort]) ? params[:sort] : "kode"
   end
  
  #managing asc and desc
    def sort_direction
      %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
    end
end
