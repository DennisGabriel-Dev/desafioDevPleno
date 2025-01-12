# == Schema Information
#
# Table name: commissions
#
#  id               :integer          not null, primary key
#  percentage_value :decimal(, )
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  seller_id        :integer
#
# Indexes
#
#  index_commissions_on_seller_id  (seller_id)
#
# Foreign Keys
#
#  seller_id  (seller_id => sellers.id)
#
class Commission < ApplicationRecord
  belongs_to :seller
end
