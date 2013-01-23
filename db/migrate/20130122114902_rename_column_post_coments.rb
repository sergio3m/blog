class RenameColumnPostComents < ActiveRecord::Migration
  def up
  	rename_column :posts, :comments, :content
  end

  def down
  end
end
