class CreateUrllists < ActiveRecord::Migration
  def self.up
    create_table :urllists do |t|
      t.integer :user_id
      t.string :title
      t.string :url
      t.integer :url_type

      t.timestamps
    end
  end

  def self.down
    drop_table :urllists
  end
end
