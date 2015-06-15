class StandingReachesController < ApplicationController
  before_action :set_standing_reach, only: [:show, :edit, :update, :destroy]

  # GET /standing_reaches
  # GET /standing_reaches.json
  def index
    @standing_reaches = StandingReach.all
  end

  def high_scores
    @title = 'Standing Reach'
    @high_scores= StandingReach.find(:all, :order => "score DESC", :limit => 10 )
    render partial: 'high_score_inches'
  end

  def delete_all
    StandingReach.destroy_all
    render :nothing => true, :status => 200, :content_type => 'text/html'
  end

  # GET /standing_reaches/1
  # GET /standing_reaches/1.json
  def show
  end

  # GET /standing_reaches/new
  def new
    @standing_reach = StandingReach.new
  end

  # GET /standing_reaches/1/edit
  def edit
  end

  # POST /standing_reaches
  # POST /standing_reaches.json
  def create
    @standing_reach = StandingReach.new(standing_reach_params)

    respond_to do |format|
      if @standing_reach.save
        format.html { redirect_to @standing_reach, notice: 'Standing reach was successfully created.' }
        format.json { render action: 'show', status: :created, location: @standing_reach }
      else
        format.html { render action: 'new' }
        format.json { render json: @standing_reach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /standing_reaches/1
  # PATCH/PUT /standing_reaches/1.json
  def update
    respond_to do |format|
      if @standing_reach.update(standing_reach_params)
        format.html { redirect_to @standing_reach, notice: 'Standing reach was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @standing_reach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /standing_reaches/1
  # DELETE /standing_reaches/1.json
  def destroy
    @standing_reach.destroy
    respond_to do |format|
      format.html { redirect_to standing_reaches_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_standing_reach
      @standing_reach = StandingReach.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def standing_reach_params
      params.require(:standing_reach).permit(:first, :last, :email, :team, :score)
    end
end
