class AddCommentsToCatches < ActiveRecord::Migration
  def change
    add_column :catches, :comments, :text

  end
end
