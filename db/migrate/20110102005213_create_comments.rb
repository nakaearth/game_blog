class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.references :entry
      t.string :title
      t.string :sentence
      t.string :author

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
