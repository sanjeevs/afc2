class SupplyShipmentsController < ApplicationController
  before_action :signed_in_user
  before_action :set_supply_shipment, only: [:show, :edit, :update, :destroy]

  # GET /supply_shipments
  # GET /supply_shipments.json
  def index
    @supply_shipments = SupplyShipment.all
  end

  # GET /supply_shipments/1
  # GET /supply_shipments/1.json
  def show
  end

  # GET /supply_shipments/new
  def new
    @supply_shipment = SupplyShipment.new
  end

  # GET /supply_shipments/1/edit
  def edit
  end

  # POST /supply_shipments
  # POST /supply_shipments.json
  def create
    @supply_shipment = SupplyShipment.new(supply_shipment_params)

    respond_to do |format|
      if @supply_shipment.save
        format.html { redirect_to @supply_shipment, notice: 'Supply shipment was successfully created.' }
        format.json { render :show, status: :created, location: @supply_shipment }
      else
        format.html { render :new }
        format.json { render json: @supply_shipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supply_shipments/1
  # PATCH/PUT /supply_shipments/1.json
  def update
    respond_to do |format|
      if @supply_shipment.update(supply_shipment_params)
        format.html { redirect_to @supply_shipment, notice: 'Supply shipment was successfully updated.' }
        format.json { render :show, status: :ok, location: @supply_shipment }
      else
        format.html { render :edit }
        format.json { render json: @supply_shipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supply_shipments/1
  # DELETE /supply_shipments/1.json
  def destroy
    @supply_shipment.destroy
    respond_to do |format|
      format.html { redirect_to supply_shipments_url, notice: 'Supply shipment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supply_shipment
      @supply_shipment = SupplyShipment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supply_shipment_params
      params.require(:supply_shipment).permit(:order_amount, :return_amount, :ship_date, :product_id, :supplier_id)
    end
end
