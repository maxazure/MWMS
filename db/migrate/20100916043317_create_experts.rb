class CreateExperts < ActiveRecord::Migration
  def self.up
    create_table :experts do |t|
      t.string :name
      t.string :job
      t.string :qq
      t.strig :email
      t.string :thumbnail
      t.string :smallphoto
      t.string :middlephoto
      t.string :largephoto
      t.text :record
      t.string :content_url
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :experts
  end
end
