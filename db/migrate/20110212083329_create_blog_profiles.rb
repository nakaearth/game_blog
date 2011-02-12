class CreateBlogProfiles < ActiveRecord::Migration
  def self.up
    create_table :blog_profiles do |t|
      t.string :name
      t.string :blog_name
      t.integer :skin_id
      t.integer :blogger_id

      t.timestamps
    end
     drop_table :blog_settings
  end

  def self.down
    drop_table :blog_profiles
    create_table :blog_settings do |t|
      t.integer :blogger_id
      t.integer :skin_id
      t.string :name,:default=>"", :null => false
      t.string :blogger_name,:default=>"", :null => false
      t.timestamps
    end
  end
end
