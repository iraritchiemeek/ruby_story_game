require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateStories < ActiveRecord::Migration

  def change
    create_table :stories do |t|
      t.string :sentence

      t.timestamps null: false
    end
  end
end
