class CreateImgcomments < ActiveRecord::Migration
  def change
    create_table :imgcomments do |t|
      t.string :email
      t.string :nickname
      t.text :body
      t.integer :image_id

      t.timestamps
    end
  end
end
