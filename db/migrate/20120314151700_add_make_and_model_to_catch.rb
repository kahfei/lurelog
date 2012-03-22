class AddMakeAndModelToCatch < ActiveRecord::Migration
  def change
  	change_table :catches do |t|
  		t.references :make 
  		t.references :model 
  	end
  end
end

