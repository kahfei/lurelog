class CreateCatches < ActiveRecord::Migration
  def change
    create_table :catches do |t|
      t.references :species
      t.date :date_caught
      t.integer :size
      t.integer :weight
      t.string :location
      t.references :lure

      t.timestamps
    end
    add_index :catches, :species_id
    add_index :catches, :lure_id
  end
end
