class CreateDebtAccountAmortizationScheduleJoinTable < ActiveRecord::Migration[5.1]
  def change

    create_join_table :debt_accounts, :amortization_schedules do |t|
      t.index :debt_account_id
      t.index :amortization_schedule_id
    end
  end
end
