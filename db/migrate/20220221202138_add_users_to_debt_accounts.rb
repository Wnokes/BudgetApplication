class AddUsersToDebtAccounts < ActiveRecord::Migration[5.1]
  def change
    add_reference :debt_accounts, :user, foreign_key: true, required: :true
  end
end
