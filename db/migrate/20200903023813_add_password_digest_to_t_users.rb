class AddPasswordDigestToTUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :t_users, :password_digest, :string
  end
end
