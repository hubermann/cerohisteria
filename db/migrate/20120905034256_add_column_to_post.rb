class AddColumnToPost < ActiveRecord::Migration
  def change
    add_column :posts, :recomended, :integer
  end
end
