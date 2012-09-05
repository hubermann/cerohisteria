class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :filename
      t.string :title
      t.string :keywords
      t.integer :post_id

      t.timestamps
    end
  end
end
