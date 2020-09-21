class CreateSPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :s_posts do |t|
      t.text :recruit
      t.references :s_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
