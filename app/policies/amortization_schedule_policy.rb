class AmortizationSchedulePolicy
    attr_reader :user, :amortization_schedule

    def initialize(user, amortization_schedule)
        @user = user
        @amortization_schedule = amortization_schedule
    end

    def show?
        amortization_schedule_belongs_to_user
    end

    def edit?
        amortization_schedule_belongs_to_user
    end

    def update?
        amortization_schedule_belongs_to_user
    end

    def destroy?
        amortization_schedule_belongs_to_user
    end

    def amortization_schedule_belongs_to_user
        @user.id == @amortization_schedule.user_id
    end
end