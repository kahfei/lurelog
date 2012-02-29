class CreateLures < ActiveRecord::Migration
  def change
    create_table :lures do |t|
      t.string :make
      t.string :model

      t.timestamps
    end
  end
end
