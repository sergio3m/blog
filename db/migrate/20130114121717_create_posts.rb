class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.text :comments

      t.timestamps
    end
  end
end
