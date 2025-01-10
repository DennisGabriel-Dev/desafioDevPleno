class AddCommissionToSeller < ActiveRecord::Migration[8.0]
  def change
    add_column :sellers, :commission, :decimal, default: 0.0
  end
end
