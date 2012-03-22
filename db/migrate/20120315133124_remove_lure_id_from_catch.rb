class RemoveLureIdFromCatch < ActiveRecord::Migration
  def up
    remove_column :catches, :lure_id
      end

  def down
    add_column :catches, :lure_id, :integer
  end
end
