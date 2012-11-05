class AlterUrlsAddColumn < ActiveRecord::Migration

  def up
    add_column("urls", "from", :string)
  end

  def down
    remove_column("urls", "from")
  end
end
