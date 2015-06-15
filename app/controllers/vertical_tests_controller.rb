class VerticalTestsController < ApplicationController
  before_action :set_vertical_test, only: [:show, :edit, :update, :destroy]

  # GET /vertical_tests
  # GET /vertical_tests.json
  def index
    @vertical_tests = VerticalTest.all
  end

  def high_scores
    @title = "Vertical Test"
    @high_scores= VerticalTest.find(:all, :order => "score DESC", :limit => 10 )
    render partial: 'high_score_inches'
  end

  def delete_all
    VerticalTest.destroy_all
    render :nothing => true, :status => 200, :content_type => 'text/html'
  end

  # GET /vertical_tests/1
  # GET /vertical_tests/1.json
  def show
  end

  # GET /vertical_tests/new
  def new
    @vertical_test = VerticalTest.new
  end

  # GET /vertical_tests/1/edit
  def edit
  end

  # POST /vertical_tests
  # POST /vertical_tests.json
  def create
    @vertical_test = VerticalTest.new(vertical_test_params)

    respond_to do |format|
      if @vertical_test.save
        format.html { redirect_to @vertical_test, notice: 'Vertical test was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vertical_test }
      else
        format.html { render action: 'new' }
        format.json { render json: @vertical_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vertical_tests/1
  # PATCH/PUT /vertical_tests/1.json
  def update
    respond_to do |format|
      if @vertical_test.update(vertical_test_params)
        format.html { redirect_to @vertical_test, notice: 'Vertical test was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vertical_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vertical_tests/1
  # DELETE /vertical_tests/1.json
  def destroy
    @vertical_test.destroy
    respond_to do |format|
      format.html { redirect_to vertical_tests_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vertical_test
      @vertical_test = VerticalTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vertical_test_params
      params.require(:vertical_test).permit(:first, :last, :email, :team, :score)
    end
end
