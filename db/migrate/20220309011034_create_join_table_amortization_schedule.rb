class CreateJoinTableAmortizationSchedule < ActiveRecord::Migration[5.1]
  def change
    create_join_table :amortization_schedules, :debt_accounts do |t|
      t.index [:amortization_schedule_id, :debt_account_id], name: :idx_amort_sched_debt
      t.index [:debt_account_id, :amortization_schedule_id], name: :idx_debt_amort_sched
    end
  end
end
