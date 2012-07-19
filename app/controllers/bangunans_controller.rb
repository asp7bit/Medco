class BangunansController < ApplicationController
  helper_method :sort_column, :sort_direction
  # GET /bangunans
  # GET /bangunans.json
  def index
    @bangunans = Bangunan.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 15, :page => params[:page])

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
    @bangunan = Bangunan.new(:kode => params[:kode], :keterangan => params[:keterangan])

    respond_to do |format|
      if @bangunan.save
        format.html { redirect_to bangunans_url, notice: 'Bangunan was successfully created.' }
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
	
	private
	#sorting column bangunan
   def sort_column
     Bangunan.column_names.include?(params[:sort]) ? params[:sort] : "kode"
   end
  
  #managing asc and desc
    def sort_direction
      %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
    end
end
