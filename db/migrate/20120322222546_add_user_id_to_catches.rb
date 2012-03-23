class AddUserIdToCatches < ActiveRecord::Migration
  def change
  	change_table :catches do |t|
  		t.references :user 
  	end
  end
end
