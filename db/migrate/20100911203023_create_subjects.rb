class CreateSubjects < ActiveRecord::Migration
  def self.up
    create_table :subjects do |t|
      t.string :title
      t.integer :user_id
      t.text :description
      t.text :body
      t.text :what
      t.text :tell_of
      t.text :how
      t.text :advantage
      t.text :notice
      t.string :expert
      t.text :cases
      t.text :commend

      t.timestamps
    end
  end

  def self.down
    drop_table :subjects
  end
end
