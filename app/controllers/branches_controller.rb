class BranchesController < ApplicationController
  before_filter :signed_in_user
  helper_method :sort_column, :sort_direction
  # GET /divisis
  # GET /divisis.json
  def index
    @branches = Branch.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 15, :page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @branches }
    end
  end

  # GET /divisis/1
  # GET /divisis/1.json
  def show
    @branch = Branch.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @branch }
    end
  end

  # GET /divisis/new
  # GET /divisis/new.json
  def new
    @branch = Branch.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @branch }
    end
  end

  # GET /divisis/1/edit
  def edit
    @branch = Branch.find(params[:id])
  end

  # POST /divisis
  # POST /divisis.json
  def create
    @branch = Branch.new(params[:branch])

    respond_to do |format|
      if @branch.save
        format.html { redirect_to @branch, notice: 'Divisi was successfully created.' }
        format.json { render json: @branch, status: :created, location: @branch }
      else
        format.html { render action: "new" }
        format.json { render json: @branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /divisis/1
  # PUT /divisis/1.json
  def update
    @branch = Branch.find(params[:id])

    respond_to do |format|
      if @branch.update_attributes(params[:branch])
        format.html { redirect_to @branch, notice: 'Divisi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /divisis/1
  # DELETE /divisis/1.json
  def destroy
    @branch = Branch.find(params[:id])
    @branch.destroy

    respond_to do |format|
      format.html { redirect_to branches_url }
      format.json { head :no_content }
    end
  end
  
  private
	#sorting column divisi
   def sort_column
     Branch.column_names.include?(params[:sort]) ? params[:sort] : "kode"
   end
  
  #managing asc and desc
    def sort_direction
      %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
    end
end
