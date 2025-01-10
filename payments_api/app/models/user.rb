# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  rolify
  has_secure_password
  has_one :seller, dependent: :destroy
  has_one :shopkeeper, dependent: :destroy

  validates :email, uniqueness: true

  accepts_nested_attributes_for :seller
  accepts_nested_attributes_for :shopkeeper
end
