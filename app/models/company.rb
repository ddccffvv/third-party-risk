# == Schema Information
#
# Table name: companies
#
#  id          :integer          not null, primary key
#  name        :string
#  street      :string
#  zip_code    :string
#  description :text
#  country_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  city        :string
#  state       :string
#

class Company < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :country
  has_many :services

  validates :name, presence: true

end
