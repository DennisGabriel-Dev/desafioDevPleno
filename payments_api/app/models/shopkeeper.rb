# == Schema Information
#
# Table name: shopkeepers
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_shopkeepers_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
class Shopkeeper < ApplicationRecord
  belongs_to :user
  has_many :sellers
  has_many :customers

  def email = user.email
end
