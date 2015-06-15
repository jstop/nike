class ShuttleRunsController < ApplicationController
  before_action :set_shuttle_run, only: [:show, :edit, :update, :destroy]

  # GET /shuttle_runs
  # GET /shuttle_runs.json
  def index
    @shuttle_runs = ShuttleRun.all
  end

  def high_scores
    @title = 'Shuttle Run'
    @high_scores= ShuttleRun.find(:all, :order => "minutes ASC, seconds ASC", :limit => 10 )
    render partial: 'high_score_times'
  end

  def delete_all
    ShuttleRun.destroy_all
    render :nothing => true, :status => 200, :content_type => 'text/html'
  end

  # GET /shuttle_runs/1
  # GET /shuttle_runs/1.json
  def show
  end

  # GET /shuttle_runs/new
  def new
    @shuttle_run = ShuttleRun.new
  end

  # GET /shuttle_runs/1/edit
  def edit
  end

  # POST /shuttle_runs
  # POST /shuttle_runs.json
  def create
    @shuttle_run = ShuttleRun.new(shuttle_run_params)

    respond_to do |format|
      if @shuttle_run.save
        format.html { redirect_to @shuttle_run, notice: 'Shuttle run was successfully created.' }
        format.json { render action: 'show', status: :created, location: @shuttle_run }
      else
        format.html { render action: 'new' }
        format.json { render json: @shuttle_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shuttle_runs/1
  # PATCH/PUT /shuttle_runs/1.json
  def update
    respond_to do |format|
      if @shuttle_run.update(shuttle_run_params)
        format.html { redirect_to @shuttle_run, notice: 'Shuttle run was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @shuttle_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shuttle_runs/1
  # DELETE /shuttle_runs/1.json
  def destroy
    @shuttle_run.destroy
    respond_to do |format|
      format.html { redirect_to shuttle_runs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shuttle_run
      @shuttle_run = ShuttleRun.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shuttle_run_params
      params.require(:shuttle_run).permit(:first, :last, :email, :team, :minutes, :seconds)
    end
end
