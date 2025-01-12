class CreateCustomers < ActiveRecord::Migration[8.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.references :seller, null: false, foreign_key: true
      t.string :phone
      t.string :document

      t.timestamps
    end
  end
end
