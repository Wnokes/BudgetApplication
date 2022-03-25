class AmortizationSchedulesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_amortization_schedule, only: %i[ show edit update destroy ]

  # GET /amortization_schedules or /amortization_schedules.json
  def index
    @amortization_schedules = AmortizationSchedule.where(user_id: current_user.id)
  end
# le poo
  # GET /amortization_schedules/1 or /amortization_schedules/1.json
  def show
    authorize @amortization_schedule
  end

  # GET /amortization_schedules/new
  def new
    @amortization_schedule = AmortizationSchedule.new
  end

  # GET /amortization_schedules/1/edit
  def edit
    authorize @amortization_schedule
  end

  # POST /amortization_schedules or /amortization_schedules.json
  def create
    @debt_accounts = DebtAccount.where(user_id: current_user.id)
    @amortization_schedule = AmortizationSchedule.new(amortization_schedule_params)
    @amortization_schedule.user_id = current_user.id
    respond_to do |format|
      if @amortization_schedule.save
        format.html { redirect_to amortization_schedule_url(@amortization_schedule), notice: "Amortization schedule was successfully created." }
        format.json { render :show, status: :created, location: @amortization_schedule }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @amortization_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amortization_schedules/1 or /amortization_schedules/1.json
  def update
    authorize @amortization_schedule
    respond_to do |format|
      if @amortization_schedule.update(amortization_schedule_params)
        format.html { redirect_to amortization_schedule_url(@amortization_schedule), notice: "Amortization schedule was successfully updated." }
        format.json { render :show, status: :ok, location: @amortization_schedule }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @amortization_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amortization_schedules/1 or /amortization_schedules/1.json
  def destroy
    authorize @amortization_schedule
    @amortization_schedule.destroy

    respond_to do |format|
      format.html { redirect_to amortization_schedules_url, notice: "Amortization schedule was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amortization_schedule
      @amortization_schedule = AmortizationSchedule.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def amortization_schedule_params
      params.require(:amortization_schedule).permit(:name)
    end
end
