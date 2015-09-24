class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :full_name
      t.date :birthday
      t.integer :account
      t.integer :digit
      t.references :agency, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
