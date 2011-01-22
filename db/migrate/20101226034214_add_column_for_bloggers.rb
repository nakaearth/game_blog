class AddColumnForBloggers < ActiveRecord::Migration
  def self.up
     add_column :bloggers, :name,:string, :default=>"", :null => false
     add_column :bloggers, :point,:integer, :default=>"0", :null => false
     add_index :bloggers, [:name]
  end

  def self.down
    drop_index :bloggers,[:name]
  end
end
