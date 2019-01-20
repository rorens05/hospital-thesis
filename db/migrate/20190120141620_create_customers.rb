class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :username
      t.string :name
      t.string :email
      t.string :contact_no
      t.string :address
      t.string :gender
      t.date :birthday

      t.timestamps
    end
  end
end
