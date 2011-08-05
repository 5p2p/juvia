class CreateTopics < ActiveRecord::Migration
  def self.up
    create_table :topics do |t|
      t.integer  :site_id, :null => false
      t.string   :key, :null => false
      t.string   :title, :null => false
      t.string   :url, :null => false
      t.datetime :created_at, :null => false
    end
    add_index :topics, [:site_id, :key], :unique => true
  end

  def self.down
    drop_table :topics
  end
end
