class CreateUrls < ActiveRecord::Migration

  def change
    create_table :urls do |t|
      t.references :channel

      t.string 'uri'
      t.string 'description'

      t.boolean 'sfw', :default => true
      t.boolean 'pending', :default => true
      t.boolean 'archived', :default => false

      t.timestamps
    end
  end
end
