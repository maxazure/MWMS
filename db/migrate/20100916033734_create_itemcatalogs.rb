class CreateItemcatalogs < ActiveRecord::Migration
  def self.up
    create_table :itemcatalogs do |t|
      t.string :name
      t.string :other_name
      t.string :itemcatalog_pic
      t.integer :expert_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :itemcatalogs
  end
end
