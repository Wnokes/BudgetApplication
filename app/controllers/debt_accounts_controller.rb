class DebtAccountsController < ApplicationController
  before_action :set_debt_account, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /debt_accounts or /debt_accounts.json
  def index
    @debt_accounts = DebtAccount.where(user_id: current_user.id)
  end

  # GET /debt_accounts/1 or /debt_accounts/1.json
  def show
    authorize @debt_account
  end

  # GET /debt_accounts/new
  def new
    @debt_account = DebtAccount.new
  end

  # GET /debt_accounts/1/edit
  def edit
    authorize @debt_account
  end

  # POST /debt_accounts or /debt_accounts.json
  def create
    @debt_account = DebtAccount.new(debt_account_params)
    @debt_account.user_id = current_user.id
    respond_to do |format|
      if @debt_account.save
        format.html { redirect_to debt_account_url(@debt_account), notice: "Debt account was successfully created." }
        format.json { render :show, status: :created, location: @debt_account }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @debt_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /debt_accounts/1 or /debt_accounts/1.json
  def update
    authorize @debt_account
    respond_to do |format|
      if @debt_account.update(debt_account_params)
        format.html { redirect_to debt_account_url(@debt_account), notice: "Debt account was successfully updated." }
        format.json { render :show, status: :ok, location: @debt_account }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @debt_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /debt_accounts/1 or /debt_accounts/1.json
  def destroy
    authorize @debt_account
    @debt_account.destroy

    respond_to do |format|
      format.html { redirect_to debt_accounts_url, notice: "Debt account was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_debt_account
      @debt_account = DebtAccount.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def debt_account_params
      params.require(:debt_account).permit(:account_name, :principle, :interest_rate, :minimum_payment)
    end
end
