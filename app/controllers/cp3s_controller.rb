class Cp3sController < ApplicationController
  before_action :set_cp3, only: [:show, :edit, :update, :destroy]

  # GET /cp3s
  # GET /cp3s.json
  def index
    @cp3s = Cp3.all
  end

  def high_scores
    @high_scores= Cp3.find(:all, :order => "minutes ASC, seconds ASC", :limit => 10 )
    render partial: 'best_times_table'
  end

  def delete_all
    Cp3.destroy_all
  end

  # GET /cp3s/1
  # GET /cp3s/1.json
  def show
  end

  # GET /cp3s/new
  def new
    @cp3 = Cp3.new
  end

  # GET /cp3s/1/edit
  def edit
  end

  # POST /cp3s
  # POST /cp3s.json
  def create
    @cp3 = Cp3.new(cp3_params)

    respond_to do |format|
      if @cp3.save
        format.html { redirect_to @cp3, notice: 'Cp3 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cp3 }
      else
        format.html { render action: 'new' }
        format.json { render json: @cp3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cp3s/1
  # PATCH/PUT /cp3s/1.json
  def update
    respond_to do |format|
      if @cp3.update(cp3_params)
        format.html { redirect_to @cp3, notice: 'Cp3 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cp3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cp3s/1
  # DELETE /cp3s/1.json
  def destroy
    @cp3.destroy
    respond_to do |format|
      format.html { redirect_to cp3s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cp3
      @cp3 = Cp3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cp3_params
      params.require(:cp3).permit(:first, :last, :minutes, :seconds)
    end
end
