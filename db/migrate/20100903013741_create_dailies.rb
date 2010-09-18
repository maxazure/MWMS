class CreateDailies < ActiveRecord::Migration
  def self.up
    create_table :dailies do |t|
      t.string :empid
      t.text :daily_text

      t.timestamps
    end
  end

  def self.down
    drop_table :dailies
  end
end
