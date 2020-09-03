class AddIndexToTUsersEmail < ActiveRecord::Migration[6.0]
  def change
    add_index :t_users, :email, unique: true
  end
end
