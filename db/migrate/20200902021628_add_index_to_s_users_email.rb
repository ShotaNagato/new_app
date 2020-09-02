class AddIndexToSUsersEmail < ActiveRecord::Migration[6.0]
  def change
    add_index :s_users, :email, unique: true
  end
end
