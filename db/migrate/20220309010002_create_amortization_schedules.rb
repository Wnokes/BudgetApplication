class CreateAmortizationSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :amortization_schedules do |t|
      t.string :name

      t.timestamps
    end
  end
end
