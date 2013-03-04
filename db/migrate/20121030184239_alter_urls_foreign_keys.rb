class AlterUrlsForeignKeys < ActiveRecord::Migration
  def up
    add_index('urls', 'channel_id')

    execute <<-SQL
      ALTER TABLE urls
      ADD CONSTRAINT fk_urls_channels
        FOREIGN KEY (channel_id)
        REFERENCES channels (id)
          ON DELETE NO ACTION
          ON UPDATE NO ACTION;
    SQL
  end

  def down
    execute <<-SQL
      ALTER TABLE urls DROP FOREIGN KEY fk_urls_channels;
    SQL

    remove_index('urls', 'channel_id')
  end
end
