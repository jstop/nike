class LaneAgilitiesController < ApplicationController
  before_action :set_lane_agility, only: [:show, :edit, :update, :destroy]

  # GET /lane_agilities
  # GET /lane_agilities.json
  def index
    @lane_agilities = LaneAgility.all
  end

  def high_scores
    @title = 'Lane Agility'
    @high_scores= LaneAgility.find(:all, :order => "minutes ASC, seconds ASC", :limit => 10 )
    render partial: 'high_score_times'
  end

  def delete_all
    LaneAgility.destroy_all
    render :nothing => true, :status => 200, :content_type => 'text/html'
  end

  # GET /lane_agilities/1
  # GET /lane_agilities/1.json
  def show
  end

  # GET /lane_agilities/new
  def new
    @lane_agility = LaneAgility.new
  end

  # GET /lane_agilities/1/edit
  def edit
  end

  # POST /lane_agilities
  # POST /lane_agilities.json
  def create
    @lane_agility = LaneAgility.new(lane_agility_params)

    respond_to do |format|
      if @lane_agility.save
        format.html { redirect_to @lane_agility, notice: 'Lane agility was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lane_agility }
      else
        format.html { render action: 'new' }
        format.json { render json: @lane_agility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lane_agilities/1
  # PATCH/PUT /lane_agilities/1.json
  def update
    respond_to do |format|
      if @lane_agility.update(lane_agility_params)
        format.html { redirect_to @lane_agility, notice: 'Lane agility was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @lane_agility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lane_agilities/1
  # DELETE /lane_agilities/1.json
  def destroy
    @lane_agility.destroy
    respond_to do |format|
      format.html { redirect_to lane_agilities_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lane_agility
      @lane_agility = LaneAgility.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lane_agility_params
      params.require(:lane_agility).permit(:first, :last, :email, :team, :minutes, :seconds)
    end
end
