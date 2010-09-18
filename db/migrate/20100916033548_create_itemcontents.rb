class CreateItemcontents < ActiveRecord::Migration
  def self.up
    create_table :itemcontents do |t|
      t.string :title
      t.integer :item_type
      t.text :summary
      t.integer :expert_id
      t.text :tell_of
      t.integer :user_id
      t.integer :catalog_id
      t.integer :click_counts

      t.timestamps
    end
  end

  def self.down
    drop_table :itemcontents
  end
end
