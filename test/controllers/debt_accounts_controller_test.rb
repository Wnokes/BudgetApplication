require 'test_helper'

class DebtAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @debt_account = debt_accounts(:one)
  end

  test "should get index" do
    get debt_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_debt_account_url
    assert_response :success
  end

  test "should create debt_account" do
    assert_difference('DebtAccount.count') do
      post debt_accounts_url, params: { debt_account: { account_name: @debt_account.account_name, interest_rate: @debt_account.interest_rate, minimum_payment: @debt_account.minimum_payment, principle: @debt_account.principle } }
    end

    assert_redirected_to debt_account_url(DebtAccount.last)
  end

  test "should show debt_account" do
    get debt_account_url(@debt_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_debt_account_url(@debt_account)
    assert_response :success
  end

  test "should update debt_account" do
    patch debt_account_url(@debt_account), params: { debt_account: { account_name: @debt_account.account_name, interest_rate: @debt_account.interest_rate, minimum_payment: @debt_account.minimum_payment, principle: @debt_account.principle } }
    assert_redirected_to debt_account_url(@debt_account)
  end

  test "should destroy debt_account" do
    assert_difference('DebtAccount.count', -1) do
      delete debt_account_url(@debt_account)
    end

    assert_redirected_to debt_accounts_url
  end
end
