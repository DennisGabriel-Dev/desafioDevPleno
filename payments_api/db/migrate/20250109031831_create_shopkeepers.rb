class CreateShopkeepers < ActiveRecord::Migration[8.0]
  def change
    create_table :shopkeepers do |t|
      t.references :user, null: true, foreign_key: true

      t.timestamps
    end
  end
end
