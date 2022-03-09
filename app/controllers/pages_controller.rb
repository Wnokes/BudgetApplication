class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:user_dash]
  
  def user_dash
    @debt_accounts = DebtAccount.where(user_id: current_user.id)
  end

  def home
  end

  def error
  end
end
