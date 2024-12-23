class AddLockableToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :failed_attempts, :integer, default: 0, null: false # Apenas se `lock_strategy` for :failed_attempts
    add_column :users, :unlock_token, :string # Apenas se `unlock_strategy` for :email ou :both
    add_column :users, :locked_at, :datetime
    add_index :users, :unlock_token, unique: true
  end
end
