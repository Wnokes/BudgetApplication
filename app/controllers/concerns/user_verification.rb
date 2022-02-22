module UserVerification
    extend ActiveSupport::Concern

    def verify_debt_account_belongs_to_user
        @debt_account = DebtAccount.find(params[:id])
        if @debt_account.user_id != current_user.id
            redirect_to "/pages/error"
        end

    end

    def verify_debt_accounts_belong_to_user
        @debt_accounts = DebtAccount.where(user_id: current_user.id)
        for debt_account in @debt_accounts
            if debt_account.user_id != current_user.id
                redirect_to "/pages/error"
            end
        end
    end

end