class CreateSUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :s_users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
