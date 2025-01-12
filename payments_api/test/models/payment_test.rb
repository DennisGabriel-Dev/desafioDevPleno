# == Schema Information
#
# Table name: payments
#
#  id          :integer          not null, primary key
#  status      :integer          default("waiting")
#  value       :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  customer_id :integer          not null
#  seller_id   :integer          not null
#
# Indexes
#
#  index_payments_on_customer_id  (customer_id)
#  index_payments_on_seller_id    (seller_id)
#
# Foreign Keys
#
#  customer_id  (customer_id => customers.id)
#  seller_id    (seller_id => sellers.id)
#
require "test_helper"

class PaymentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
