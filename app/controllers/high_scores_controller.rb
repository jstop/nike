class HighScoresController < ApplicationController
  before_action :set_high_score, only: [:show, :edit, :update, :destroy]

  # GET /high_scores/list
  # GET /high_scores.json
  def times
    @high_scores = HighScore.where.not(seconds: nil).where.not(seconds: 0).where.not(minutes: nil).where.not(minutes: 0).limit(6)
    #@high_scores = HighScore.find(:all, :order => "minutes ASC, seconds DESC", :limit => 6 )
  end

  def scores
    #@high_scores = HighScore.find(:all, :order => "score DESC", :limit => 6 )
    @high_scores = HighScore.where.not(score: nil).where.not(score: 0).limit(6)
  end

  # GET /high_scores
  # GET /high_scores.json
  def index
    @high_scores = HighScore.all
  end

  # GET /high_scores/1
  # GET /high_scores/1.json
  def show
  end

  # GET /high_scores/new
  def new
    @high_score = HighScore.new
  end

  # GET /high_scores/1/edit
  def edit
  end

  # POST /high_scores
  # POST /high_scores.json
  def create
    @high_score = HighScore.new(high_score_params)

    respond_to do |format|
      if @high_score.save
        format.html { redirect_to @high_score, notice: 'High score was successfully created.' }
        format.json { render action: 'show', status: :created, location: @high_score }
      else
        format.html { render action: 'new' }
        format.json { render json: @high_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /high_scores/1
  # PATCH/PUT /high_scores/1.json
  def update
    respond_to do |format|
      if @high_score.update(high_score_params)
        format.html { redirect_to @high_score, notice: 'High score was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @high_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /high_scores/1
  # DELETE /high_scores/1.json
  def destroy
    @high_score.destroy
    respond_to do |format|
      format.html { redirect_to high_scores_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_high_score
      @high_score = HighScore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def high_score_params
      params.require(:high_score).permit(:first, :last, :email, :minutes, :seconds, :score)
    end
end
