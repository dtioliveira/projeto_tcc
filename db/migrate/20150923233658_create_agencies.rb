class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.integer :number
      t.integer :digit
      t.references :city, index: true, foreign_key: true
      t.references :bank, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
