class ChangueTypeFieldImages < ActiveRecord::Migration
  def up
    change_table :images do |t|
      t.change :filename, :text
    end
  end

  def down
  end
end
