class AddShopkeeperReferencesToSellers < ActiveRecord::Migration[8.0]
  def change
    add_reference :sellers, :shopkeeper, null: false, foreign_key: true
  end
end
