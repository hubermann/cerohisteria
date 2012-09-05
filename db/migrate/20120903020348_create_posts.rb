class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :category_id
      t.integer :author_id
      t.integer :mainimg
      t.string :keywords
      t.string :slug

      t.timestamps
    end
  end
end
