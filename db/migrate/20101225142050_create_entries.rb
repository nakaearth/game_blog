class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.string :title,:default=>"", :null => false
      t.string :sentence,:default=>"", :null => false
      t.integer :public_flag, :default=>"0", :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :entries
  end
end
