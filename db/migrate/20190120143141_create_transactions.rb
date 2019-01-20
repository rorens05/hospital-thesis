class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.timestamp :date_ordered
      t.references :customer, foreign_key: true
      t.decimal :shipping_fee
      t.references :payment_method, foreign_key: true
      t.boolean :verified
      t.timestamp :delivery_date

      t.timestamps
    end
  end
end
