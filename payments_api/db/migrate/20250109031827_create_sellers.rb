class CreateSellers < ActiveRecord::Migration[8.0]
  def change
    create_table :sellers do |t|
      t.references :user, null: true, foreign_key: true

      t.timestamps
    end
  end
end
