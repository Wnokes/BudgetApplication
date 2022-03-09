class DebtAccountPolicy
    attr_reader :user, :debt_account

    def initialize(user, debt_account)
        @user = user
        @debt_account = debt_account
    end

    def show?
        debt_account_belongs_to_user
    end

    def edit?
        debt_account_belongs_to_user
    end

    def update?
        debt_account_belongs_to_user
    end

    def destroy?
        debt_account_belongs_to_user
    end

    def debt_account_belongs_to_user
        @user.id == @debt_account.user_id
    end
end