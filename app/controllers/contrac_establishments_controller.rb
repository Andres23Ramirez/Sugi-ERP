class ContracEstablishmentsController < ApplicationController
  before_action :set_contrac_establishment, only: [:show, :edit, :update, :destroy]

  # GET /contrac_establishments
  # GET /contrac_establishments.json
  def index
    @contrac_establishments = ContracEstablishment.all
  end

  # GET /contrac_establishments/1
  # GET /contrac_establishments/1.json
  def show
  end

  # GET /contrac_establishments/new
  def new
    @contrac_establishment = ContracEstablishment.new
  end

  # GET /contrac_establishments/1/edit
  def edit
  end

  # POST /contrac_establishments
  # POST /contrac_establishments.json
  def create
    @contrac_establishment = ContracEstablishment.new(contrac_establishment_params)

    respond_to do |format|
      if @contrac_establishment.save
        format.html { redirect_to @contrac_establishment, notice: 'Contrac establishment was successfully created.' }
        format.json { render :show, status: :created, location: @contrac_establishment }
      else
        format.html { render :new }
        format.json { render json: @contrac_establishment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contrac_establishments/1
  # PATCH/PUT /contrac_establishments/1.json
  def update
    respond_to do |format|
      if @contrac_establishment.update(contrac_establishment_params)
        format.html { redirect_to @contrac_establishment, notice: 'Contrac establishment was successfully updated.' }
        format.json { render :show, status: :ok, location: @contrac_establishment }
      else
        format.html { render :edit }
        format.json { render json: @contrac_establishment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contrac_establishments/1
  # DELETE /contrac_establishments/1.json
  def destroy
    @contrac_establishment.destroy
    respond_to do |format|
      format.html { redirect_to contrac_establishments_url, notice: 'Contrac establishment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contrac_establishment
      @contrac_establishment = ContracEstablishment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contrac_establishment_params

      params.require(:contrac_establishment).permit(:description, :wayToPay, :porpuse, :file_name, :startDate, :endDate, :establishment_id)

    end
end
