class AddProfileToTUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :t_users, :profile, :text
    add_index :t_users, :profile
  end
end
