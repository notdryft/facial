class RenameUrlToLink < ActiveRecord::Migration

  def up
    rename_table :urls, :links
  end

  def down
    rename_table :links, :urls
  end
end
