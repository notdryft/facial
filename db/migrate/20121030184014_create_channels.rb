class CreateChannels < ActiveRecord::Migration

  def change
    create_table :channels do |t|
      t.string "name"
      t.string "topic"

      t.timestamps
    end
  end
end
