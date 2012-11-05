class AlterUrlsIndexName < ActiveRecord::Migration

  def up
    add_index :channels, :name, :unique => true
  end

  def down
    remove_index :channels, :name
  end
end
