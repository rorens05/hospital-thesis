class CreateSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :company
      t.string :contact_no
      t.string :email

      t.timestamps
    end
  end
end
