class AddColumnIndexEntries < ActiveRecord::Migration
  def self.up
#    remove_column :entries, :public_flag
#    add_column :entries, :public_flag, :integer, :default=>"0", :null => false
#    add_index_index :entries, [:blogger_id,:public_flag,:updated_at]
  end

  def self.down
    #drop_index :entries_index,[:blogger_id,:public_flag,:updated_at]
  end
end
