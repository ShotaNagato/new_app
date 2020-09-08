class AddProfileToSUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :s_users, :profile, :text
    add_index :s_users, :profile
  end
end
