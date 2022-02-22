class PagesController < ApplicationController
  include UserVerification
  before_action :authenticate_user!, only: [:user_dash]
  before_action :verify_debt_accounts_belong_to_user, only: [:user_dach]
  
  def user_dash
    @debt_accounts = DebtAccount.where(user_id: current_user.id)
  end

  def home
  end

  def error
  end
end
