class CreateCatalogs < ActiveRecord::Migration
  def self.up
    create_table :catalogs do |t|
      t.string :sort_name
      t.text :remark

      t.timestamps
    end
  end

  def self.down
    drop_table :catalogs
  end
end
