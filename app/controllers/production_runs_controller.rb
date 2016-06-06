class ProductionRunsController < ApplicationController
  before_action :set_production_run, only: [:show, :edit, :update, :destroy]

  # GET /production_runs
  # GET /production_runs.json
  def index
    @production_runs = ProductionRun.all
  end

  # GET /production_runs/1
  # GET /production_runs/1.json
  def show
  end

  # GET /production_runs/new
  def new
    @production_run = ProductionRun.new
  end

  # GET /production_runs/1/edit
  def edit
  end

  # POST /production_runs
  # POST /production_runs.json
  def create
    @production_run = ProductionRun.new(production_run_params)

    respond_to do |format|
      if @production_run.save
        format.html { redirect_to @production_run, notice: 'Production run was successfully created.' }
        format.json { render :show, status: :created, location: @production_run }
      else
        format.html { render :new }
        format.json { render json: @production_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /production_runs/1
  # PATCH/PUT /production_runs/1.json
  def update
    respond_to do |format|
      if @production_run.update(production_run_params)
        format.html { redirect_to @production_run, notice: 'Production run was successfully updated.' }
        format.json { render :show, status: :ok, location: @production_run }
      else
        format.html { render :edit }
        format.json { render json: @production_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /production_runs/1
  # DELETE /production_runs/1.json
  def destroy
    @production_run.destroy
    respond_to do |format|
      format.html { redirect_to production_runs_url, notice: 'Production run was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_production_run
      @production_run = ProductionRun.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def production_run_params
      params.require(:production_run).permit(:lot_name, :producer_id, :product_id, :mfgd_amount, :mfgd_date, :expiry_date)
    end
end
