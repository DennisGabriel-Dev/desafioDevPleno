# == Schema Information
#
# Table name: customers
#
#  id            :integer          not null, primary key
#  document      :string
#  email         :string
#  name          :string
#  phone         :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  seller_id     :integer
#  shopkeeper_id :integer          not null
#
# Indexes
#
#  index_customers_on_seller_id      (seller_id)
#  index_customers_on_shopkeeper_id  (shopkeeper_id)
#
# Foreign Keys
#
#  seller_id      (seller_id => sellers.id)
#  shopkeeper_id  (shopkeeper_id => shopkeepers.id)
#
class Customer < ApplicationRecord
  belongs_to :shopkeeper
  belongs_to :seller, optional: true
end
