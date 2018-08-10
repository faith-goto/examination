class WhatTestsController < ApplicationController
  before_action :set_what_test, only: [:show, :edit, :update, :destroy]

  # GET /what_tests
  # GET /what_tests.json
  def index
    @what_tests = WhatTest.all
  end

  # GET /what_tests/1
  # GET /what_tests/1.json
  def show
  end

  # GET /what_tests/new
  def new
    @what_test = WhatTest.new
  end

  # GET /what_tests/1/edit
  def edit
  end

  # POST /what_tests
  # POST /what_tests.json
  def create
    @what_test = WhatTest.new(what_test_params)

    respond_to do |format|
      if @what_test.save
        format.html { redirect_to @what_test, notice: 'What test was successfully created.' }
        format.json { render :show, status: :created, location: @what_test }
      else
        format.html { render :new }
        format.json { render json: @what_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /what_tests/1
  # PATCH/PUT /what_tests/1.json
  def update
    respond_to do |format|
      if @what_test.update(what_test_params)
        format.html { redirect_to @what_test, notice: 'What test was successfully updated.' }
        format.json { render :show, status: :ok, location: @what_test }
      else
        format.html { render :edit }
        format.json { render json: @what_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /what_tests/1
  # DELETE /what_tests/1.json
  def destroy
    @what_test.destroy
    respond_to do |format|
      format.html { redirect_to what_tests_url, notice: 'What test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_what_test
      @what_test = WhatTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def what_test_params
      params.require(:what_test).permit(:period_id, :testname)
    end
end
