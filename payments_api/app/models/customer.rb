# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  document   :string
#  email      :string
#  name       :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  seller_id  :integer          not null
#
# Indexes
#
#  index_customers_on_seller_id  (seller_id)
#
# Foreign Keys
#
#  seller_id  (seller_id => sellers.id)
#
class Customer < ApplicationRecord
  belongs_to :seller
  has_many :payments
end
