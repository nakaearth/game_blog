class DeviseCreateBloggers < ActiveRecord::Migration
  def self.up
    create_table(:bloggers) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    add_index :bloggers, :email,                :unique => true
    add_index :bloggers, :reset_password_token, :unique => true
    # add_index :bloggers, :confirmation_token,   :unique => true
    # add_index :bloggers, :unlock_token,         :unique => true
  end

  def self.down
    drop_table :bloggers
  end
end
