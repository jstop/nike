class BestTimesController < ApplicationController
  before_action :set_best_time, only: [:show, :edit, :update, :destroy]

  # GET /best_times
  # GET /best_times.json
  def index
    @best_times = BestTime.all
  end

  def times
    @best_times = BestTime.where.not(seconds: nil).where.not(seconds: 0).where.not(minutes: nil).where.not(minutes: 0).limit(10)
    @best_times = BestTime.find(:all, :order => "minutes ASC, seconds DESC", :limit => 10 )
  end

  def both
    @best_times = BestTime.find(:all, :order => "minutes ASC, seconds ASC", :limit => 10 )
    #@best_times = BestTime.where.not(seconds: nil).where.not(seconds: 0).where.not(minutes: nil).where.not(minutes: 0).limit(10)
    @high_scores = HighScore.where.not(score: nil).where.not(score: 0).order('score DESC').limit(10)
  end


  # GET /best_times/1
  # GET /best_times/1.json
  def show
  end

  # GET /best_times/new
  def new
    @best_time = BestTime.new
  end

  # GET /best_times/1/edit
  def edit
  end

  # POST /best_times
  # POST /best_times.json
  def create
    @best_time = BestTime.new(best_time_params)

    respond_to do |format|
      if @best_time.save
        format.html { redirect_to @best_time, notice: 'Best time was successfully created.' }
        format.json { render action: 'show', status: :created, location: @best_time }
      else
        format.html { render action: 'new' }
        format.json { render json: @best_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /best_times/1
  # PATCH/PUT /best_times/1.json
  def update
    respond_to do |format|
      if @best_time.update(best_time_params)
        format.html { redirect_to @best_time, notice: 'Best time was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @best_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /best_times/1
  # DELETE /best_times/1.json
  def destroy
    @best_time.destroy
    respond_to do |format|
      format.html { redirect_to best_times_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_best_time
      @best_time = BestTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def best_time_params
      params.require(:best_time).permit(:first, :last, :email, :minutes, :seconds)
    end
end
