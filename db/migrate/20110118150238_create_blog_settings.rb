class CreateBlogSettings < ActiveRecord::Migration
  def self.up
    create_table :blog_settings do |t|
      t.integer :blogger_id
      t.integer :skin_id

      t.timestamps
    end
  end

  def self.down
    drop_table :blog_settings
  end
end
