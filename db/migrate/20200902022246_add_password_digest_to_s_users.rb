class AddPasswordDigestToSUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :s_users, :password_digest, :string
  end
end
