class ProductShipmentsController < ApplicationController
  before_action :signed_in_user
  before_action :set_product_shipment, only: [:show, :edit, :update, :destroy]

  # GET /product_shipments
  # GET /product_shipments.json
  def index
    @product_shipments = ProductShipment.all
  end

  # GET /product_shipments/1
  # GET /product_shipments/1.json
  def show
  end

  # GET /product_shipments/new
  def new
    @product_shipment = ProductShipment.new
  end

  # GET /product_shipments/1/edit
  def edit
  end

  # POST /product_shipments
  # POST /product_shipments.json
  def create
    @product_shipment = ProductShipment.new(product_shipment_params)
    respond_to do |format|
      if @product_shipment.save
        format.html { redirect_to @product_shipment, notice: 'Product shipment was successfully created.' }
        format.json { render :show, status: :created, location: @product_shipment }
      else
        format.html { render :new }
        format.json { render json: @product_shipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_shipments/1
  # PATCH/PUT /product_shipments/1.json
  def update
    respond_to do |format|
      if @product_shipment.update(product_shipment_params)
        format.html { redirect_to @product_shipment, notice: 'Product shipment was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_shipment }
      else
        format.html { render :edit }
        format.json { render json: @product_shipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_shipments/1
  # DELETE /product_shipments/1.json
  def destroy
    @product_shipment.destroy
    respond_to do |format|
      format.html { redirect_to product_shipments_url, notice: 'Product shipment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_shipment
      @product_shipment = ProductShipment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_shipment_params
      params.require(:product_shipment).permit(:order_amount, :return_amount, :ship_date, :production_run_id, :customer_id)
    end
end
