class AlterLinksRenameColumns < ActiveRecord::Migration

  def up
    rename_column "links", "from", "nick"
    rename_column "links", "uri", "url"
  end

  def down
    rename_column "links", "url", "uri"
    rename_column "links", "nick", "from"
  end
end
