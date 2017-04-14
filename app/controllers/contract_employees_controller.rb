class ContractEmployeesController < ApplicationController
  before_action :set_contract_employee, only: [:show, :edit, :update, :destroy]

  # GET /contract_employees
  # GET /contract_employees.json
  def index
    @contract_employees = ContractEmployee.all
  end

  # GET /contract_employees/1
  # GET /contract_employees/1.json
  def show
  end

  # GET /contract_employees/new
  def new
    @contract_employee = ContractEmployee.new
  end

  # GET /contract_employees/1/edit
  def edit
  end

  # POST /contract_employees
  # POST /contract_employees.json
  def create
    @contract_employee = ContractEmployee.new(contract_employee_params)

    respond_to do |format|
      if @contract_employee.save
        format.html { redirect_to @contract_employee, notice: 'Contract employee was successfully created.' }
        format.json { render :show, status: :created, location: @contract_employee }
      else
        format.html { render :new }
        format.json { render json: @contract_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contract_employees/1
  # PATCH/PUT /contract_employees/1.json
  def update
    respond_to do |format|
      if @contract_employee.update(contract_employee_params)
        format.html { redirect_to @contract_employee, notice: 'Contract employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @contract_employee }
      else
        format.html { render :edit }
        format.json { render json: @contract_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contract_employees/1
  # DELETE /contract_employees/1.json
  def destroy
    @contract_employee.destroy
    respond_to do |format|
      format.html { redirect_to contract_employees_url, notice: 'Contract employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract_employee
      @contract_employee = ContractEmployee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contract_employee_params
      params.require(:contract_employee).permit(:dateStart, :dateEnd, :salary, :employee_id)
    end
end
