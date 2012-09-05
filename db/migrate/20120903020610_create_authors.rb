class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :nickname
      t.string :description
      t.text :avatar

      t.timestamps
    end
  end
end
