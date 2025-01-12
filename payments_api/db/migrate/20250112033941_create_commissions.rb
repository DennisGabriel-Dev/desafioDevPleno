class CreateCommissions < ActiveRecord::Migration[8.0]
  def change
    create_table :commissions do |t|
      t.decimal :percentage_value
      t.references :seller, null: true, foreign_key: true

      t.timestamps
    end
  end
end
