class ChangeColumnToPost < ActiveRecord::Migration
  def up
    change_table :posts do |t|
      t.change :recomended, :boolean
    end
  end

  def down
  end
end
