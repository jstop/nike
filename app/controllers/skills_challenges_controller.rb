class SkillsChallengesController < ApplicationController
  before_action :set_skills_challenge, only: [:show, :edit, :update, :destroy]

  # GET /skills_challenges
  # GET /skills_challenges.json
  def index
    @skills_challenges = SkillsChallenge.all
  end

  def high_scores
    @title = 'Skills Challenge'
    @high_scores= SkillsChallenge.find(:all, :order => "minutes ASC, seconds ASC", :limit => 10 )
    render partial: 'high_score_times'
  end

  def delete_all
    SkillsChallenge.destroy_all
    render :nothing => true, :status => 200, :content_type => 'text/html'
  end

  # GET /skills_challenges/1
  # GET /skills_challenges/1.json
  def show
  end

  # GET /skills_challenges/new
  def new
    @skills_challenge = SkillsChallenge.new
  end

  # GET /skills_challenges/1/edit
  def edit
  end

  # POST /skills_challenges
  # POST /skills_challenges.json
  def create
    @skills_challenge = SkillsChallenge.new(skills_challenge_params)

    respond_to do |format|
      if @skills_challenge.save
        format.html { redirect_to @skills_challenge, notice: 'Skills challenge was successfully created.' }
        format.json { render action: 'show', status: :created, location: @skills_challenge }
      else
        format.html { render action: 'new' }
        format.json { render json: @skills_challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skills_challenges/1
  # PATCH/PUT /skills_challenges/1.json
  def update
    respond_to do |format|
      if @skills_challenge.update(skills_challenge_params)
        format.html { redirect_to @skills_challenge, notice: 'Skills challenge was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @skills_challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skills_challenges/1
  # DELETE /skills_challenges/1.json
  def destroy
    @skills_challenge.destroy
    respond_to do |format|
      format.html { redirect_to skills_challenges_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skills_challenge
      @skills_challenge = SkillsChallenge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skills_challenge_params
      params.require(:skills_challenge).permit(:first, :last, :email, :team, :minutes, :seconds)
    end
end
