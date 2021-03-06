class ControlsController < ApplicationController
  before_action :set_control, only: [:show, :edit, :update, :destroy]

  # GET /controls
  # GET /controls.json
  def index
    @controls= Control.find(:all, :order => "score DESC", :limit => 10 )
    #@controls = Control.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @controls}
      format.js
    end
  end

  def high_scores

 do |format|
      format.json { render json: @controls}
    end
  end

  # GET /controls/1
  # GET /controls/1.json
  def show
  end

  # GET /controls/new
  def new
    @control = Control.new
  end

  # GET /controls/1/edit
  def edit
  end

  # POST /controls
  # POST /controls.json
  def create
    @control = Control.new(control_params)

    respond_to do |format|
      if @control.save
        format.html { redirect_to @control, notice: 'Control was successfully created.' }
        format.json { render action: 'show', status: :created, location: @control }
      else
        format.html { render action: 'new' }
        format.json { render json: @control.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /controls/1
  # PATCH/PUT /controls/1.json
  def update
    respond_to do |format|
      if @control.update(control_params)
        format.html { redirect_to @control, notice: 'Control was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @control.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /controls/1
  # DELETE /controls/1.json
  def destroy
    @control.destroy
    respond_to do |format|
      format.html { redirect_to controls_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_control
      @control = Control.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def control_params
      params.require(:control).permit(:first, :last, :email, :score)
    end
end
