class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :serial_no
      t.string :name
      t.references :supplier, foreign_key: true
      t.references :category, foreign_key: true
      t.decimal :price

      t.timestamps
    end
  end
end
