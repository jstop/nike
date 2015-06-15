class WingspansController < ApplicationController
  before_action :set_wingspan, only: [:show, :edit, :update, :destroy]

  # GET /wingspans
  # GET /wingspans.json
  def index
    @wingspans = Wingspan.all
  end

  def high_scores
    @high_scores= Wingspan.find(:all, :order => "score DESC", :limit => 10 )
    @title = "Wingspan"
    render partial: 'high_score_inches'
  end

  def delete_all
    puts 'Deleting Wingspans'
    Wingspan.destroy_all
    render :nothing => true, :status => 201, :content_type => 'text/html'
  end

  # GET /wingspans/1
  # GET /wingspans/1.json
  def show
  end

  # GET /wingspans/new
  def new
    @wingspan = Wingspan.new
  end

  # GET /wingspans/1/edit
  def edit
  end

  # POST /wingspans
  # POST /wingspans.json
  def create
    @wingspan = Wingspan.new(wingspan_params)

    respond_to do |format|
      if @wingspan.save
        format.html { redirect_to @wingspan, notice: 'Wingspan was successfully created.' }
        format.json { render action: 'show', status: :created, location: @wingspan }
      else
        format.html { render action: 'new' }
        format.json { render json: @wingspan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wingspans/1
  # PATCH/PUT /wingspans/1.json
  def update
    respond_to do |format|
      if @wingspan.update(wingspan_params)
        format.html { redirect_to @wingspan, notice: 'Wingspan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @wingspan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wingspans/1
  # DELETE /wingspans/1.json
  def destroy
    @wingspan.destroy
    respond_to do |format|
      format.html { redirect_to wingspans_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wingspan
      @wingspan = Wingspan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wingspan_params
      params.require(:wingspan).permit(:first, :last, :email, :team, :score)
    end
end
