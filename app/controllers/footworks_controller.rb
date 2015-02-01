class FootworksController < ApplicationController
  before_action :set_footwork, only: [:show, :edit, :update, :destroy]

  # GET /footworks
  # GET /footworks.json
  def index
    #@footworks = Footwork.all
    @footworks = Footwork.find(:all, :order => "score ASC", :limit => 6 )
  end

  # GET /footworks/1
  # GET /footworks/1.json
  def show
  end

  # GET /footworks/new
  def new
    @footwork = Footwork.new
  end

  # GET /footworks/1/edit
  def edit
  end

  # POST /footworks
  # POST /footworks.json
  def create
    @footwork = Footwork.new(footwork_params)

    respond_to do |format|
      if @footwork.save
        format.html { redirect_to @footwork, notice: 'Footwork was successfully created.' }
        format.json { render action: 'show', status: :created, location: @footwork }
      else
        format.html { render action: 'new' }
        format.json { render json: @footwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /footworks/1
  # PATCH/PUT /footworks/1.json
  def update
    respond_to do |format|
      if @footwork.update(footwork_params)
        format.html { redirect_to @footwork, notice: 'Footwork was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @footwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /footworks/1
  # DELETE /footworks/1.json
  def destroy
    @footwork.destroy
    respond_to do |format|
      format.html { redirect_to footworks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_footwork
      @footwork = Footwork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def footwork_params
      params.require(:footwork).permit(:first, :last, :email, :score)
    end
end
