# == Schema Information
#
# Table name: sellers
#
#  id            :integer          not null, primary key
#  commission    :decimal(, )      default(0.0)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  shopkeeper_id :integer          not null
#  user_id       :integer          not null
#
# Indexes
#
#  index_sellers_on_shopkeeper_id  (shopkeeper_id)
#  index_sellers_on_user_id        (user_id)
#
# Foreign Keys
#
#  shopkeeper_id  (shopkeeper_id => shopkeepers.id)
#  user_id        (user_id => users.id)
#
require "test_helper"

class SellerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
