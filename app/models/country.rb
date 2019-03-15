# == Schema Information
#
# Table name: countries
#
#  id         :integer          not null, primary key
#  name       :string
#  is_eea     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Country < ApplicationRecord
  has_many :companies
  has_many :services
end
