class AmortizationSchedule < ApplicationRecord
    has_and_belongs_to_many :debt_accounts
end
