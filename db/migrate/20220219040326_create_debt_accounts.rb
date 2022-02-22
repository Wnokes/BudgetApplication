class CreateDebtAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :debt_accounts do |t|
      t.string :account_name
      t.integer :principle
      t.integer :interest_rate
      t.integer :minimum_payment

      t.timestamps
    end
  end
end
