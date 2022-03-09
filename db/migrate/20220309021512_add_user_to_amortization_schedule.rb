class AddUserToAmortizationSchedule < ActiveRecord::Migration[5.1]
  def change
    add_reference :amortization_schedules, :user, foreign_key: true, required: true
  end
end
