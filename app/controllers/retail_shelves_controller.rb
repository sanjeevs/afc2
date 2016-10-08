class RetailShelvesController < ApplicationController
  before_action :set_retail_shelf, only: [:show, :edit, :update, :destroy]

  # GET /retail_shelves
  # GET /retail_shelves.json
  def index
    @retail_shelves = RetailShelf.all
  end

  # GET /retail_shelves/1
  # GET /retail_shelves/1.json
  def show
  end

  # GET /retail_shelves/new
  def new
    @retail_shelf = RetailShelf.new
  end

  # GET /retail_shelves/1/edit
  def edit
  end

  # POST /retail_shelves
  # POST /retail_shelves.json
  def create
    @retail_shelf = RetailShelf.new(retail_shelf_params)

    respond_to do |format|
      if @retail_shelf.save
        format.html { redirect_to @retail_shelf, notice: 'Retail shelf was successfully created.' }
        format.json { render :show, status: :created, location: @retail_shelf }
      else
        format.html { render :new }
        format.json { render json: @retail_shelf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /retail_shelves/1
  # PATCH/PUT /retail_shelves/1.json
  def update
    respond_to do |format|
      if @retail_shelf.update(retail_shelf_params)
        format.html { redirect_to @retail_shelf, notice: 'Retail shelf was successfully updated.' }
        format.json { render :show, status: :ok, location: @retail_shelf }
      else
        format.html { render :edit }
        format.json { render json: @retail_shelf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /retail_shelves/1
  # DELETE /retail_shelves/1.json
  def destroy
    @retail_shelf.destroy
    respond_to do |format|
      format.html { redirect_to retail_shelves_url, notice: 'Retail shelf was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_retail_shelf
      @retail_shelf = RetailShelf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def retail_shelf_params
      params.require(:retail_shelf).permit(:shelf_amount, :comment, :updated_by, :updated_on, :customer_id, :product_id)
    end
end
