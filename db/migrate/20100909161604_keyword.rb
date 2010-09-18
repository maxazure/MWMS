class Keyword < ActiveRecord::Migration
  def self.up
    add_column :keywords, :catalog_id, :integer, :default=>0
  end

  def self.down
    remove_column :keywords, :catalog_id
  end
end
