class CreateTPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :t_posts do |t|
      t.text :recruit
      t.references :t_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
