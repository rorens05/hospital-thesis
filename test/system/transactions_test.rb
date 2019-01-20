require "application_system_test_case"

class TransactionsTest < ApplicationSystemTestCase
  setup do
    @transaction = transactions(:one)
  end

  test "visiting the index" do
    visit transactions_url
    assert_selector "h1", text: "Transactions"
  end

  test "creating a Transaction" do
    visit transactions_url
    click_on "New Transaction"

    fill_in "Customer", with: @transaction.customer_id
    fill_in "Date ordered", with: @transaction.date_ordered
    fill_in "Delivery date", with: @transaction.delivery_date
    fill_in "Payment method", with: @transaction.payment_method_id
    fill_in "Shipping fee", with: @transaction.shipping_fee
    fill_in "Verified", with: @transaction.verified
    click_on "Create Transaction"

    assert_text "Transaction was successfully created"
    click_on "Back"
  end

  test "updating a Transaction" do
    visit transactions_url
    click_on "Edit", match: :first

    fill_in "Customer", with: @transaction.customer_id
    fill_in "Date ordered", with: @transaction.date_ordered
    fill_in "Delivery date", with: @transaction.delivery_date
    fill_in "Payment method", with: @transaction.payment_method_id
    fill_in "Shipping fee", with: @transaction.shipping_fee
    fill_in "Verified", with: @transaction.verified
    click_on "Update Transaction"

    assert_text "Transaction was successfully updated"
    click_on "Back"
  end

  test "destroying a Transaction" do
    visit transactions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Transaction was successfully destroyed"
  end
end
