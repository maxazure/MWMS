class AddPagenamToItemcontents < ActiveRecord::Migration
  def self.up
      add_column :itemcontents, :pagename, :string
      add_column :itemcontents, :body, :text
  end

  def self.down
    remove_column :itemcontents, :pagename
    remove_column :itemcontents, :body
  end
end
