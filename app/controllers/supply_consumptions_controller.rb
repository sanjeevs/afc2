class SupplyConsumptionsController < ApplicationController
  before_action :signed_in_user
  before_action :set_supply_consumption, only: [:show, :edit, :update, :destroy]

  # GET /supply_consumptions
  # GET /supply_consumptions.json
  def index
    @supply_consumptions = SupplyConsumption.all
  end

  # GET /supply_consumptions/1
  # GET /supply_consumptions/1.json
  def show
  end

  # GET /supply_consumptions/new
  def new
    @supply_consumption = SupplyConsumption.new
  end

  # GET /supply_consumptions/1/edit
  def edit
  end

  # POST /supply_consumptions
  # POST /supply_consumptions.json
  def create
    @supply_consumption = SupplyConsumption.new(supply_consumption_params)

    respond_to do |format|
      if @supply_consumption.save
        format.html { redirect_to @supply_consumption, notice: 'Supply consumption was successfully created.' }
        format.json { render :show, status: :created, location: @supply_consumption }
      else
        format.html { render :new }
        format.json { render json: @supply_consumption.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supply_consumptions/1
  # PATCH/PUT /supply_consumptions/1.json
  def update
    respond_to do |format|
      if @supply_consumption.update(supply_consumption_params)
        format.html { redirect_to @supply_consumption, notice: 'Supply consumption was successfully updated.' }
        format.json { render :show, status: :ok, location: @supply_consumption }
      else
        format.html { render :edit }
        format.json { render json: @supply_consumption.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supply_consumptions/1
  # DELETE /supply_consumptions/1.json
  def destroy
    @supply_consumption.destroy
    respond_to do |format|
      format.html { redirect_to supply_consumptions_url, notice: 'Supply consumption was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supply_consumption
      @supply_consumption = SupplyConsumption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supply_consumption_params
      params.require(:supply_consumption).permit(:supply_id, :used_amount, :unit, :production_run_id)
    end
end
