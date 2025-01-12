class CreatePayments < ActiveRecord::Migration[8.0]
  def change
    create_table :payments do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :seller, null: false, foreign_key: true
      t.integer :status, default: 0
      t.decimal :value

      t.timestamps
    end
  end
end
