class MelosController < ApplicationController
  before_action :set_melo, only: [:show, :edit, :update, :destroy]

  # GET /melos
  # GET /melos.json
  def index
    @melos = Melo.all
  end

  def delete_all
    Vertical.delete_all
  end

  def high_scores
    @high_scores= Melo.find(:all, :order => "minutes ASC, seconds ASC", :limit => 10 )
    render partial: 'best_times_table'
  end
  #
  # GET /melos/1
  # GET /melos/1.json
  def show
  end

  # GET /melos/new
  def new
    @melo = Melo.new
  end

  # GET /melos/1/edit
  def edit
  end

  # POST /melos
  # POST /melos.json
  def create
    @melo = Melo.new(melo_params)

    respond_to do |format|
      if @melo.save
        format.html { redirect_to @melo, notice: 'Melo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @melo }
      else
        format.html { render action: 'new' }
        format.json { render json: @melo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /melos/1
  # PATCH/PUT /melos/1.json
  def update
    respond_to do |format|
      if @melo.update(melo_params)
        format.html { redirect_to @melo, notice: 'Melo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @melo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /melos/1
  # DELETE /melos/1.json
  def destroy
    @melo.destroy
    respond_to do |format|
      format.html { redirect_to melos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_melo
      @melo = Melo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def melo_params
      params.require(:melo).permit(:first, :last, :minutes, :seconds)
    end
end
