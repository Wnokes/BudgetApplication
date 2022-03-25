class AmortizationSchedule < ApplicationRecord
    has_and_belongs_to_many :debt_accounts
    accepts_nested_attributes_for :debt_accounts
end
