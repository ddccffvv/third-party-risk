# == Schema Information
#
# Table name: services
#
#  id                       :integer          not null, primary key
#  name                     :string
#  description              :text
#  company_id               :integer
#  typical_data             :text
#  security_information_url :string
#  gdpr_information_url     :string
#  list_of_processors_url   :string
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  country_id               :integer
#

class Service < ApplicationRecord
  belongs_to :company
  belongs_to :country

  URL_REGEXP = /\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?\z/ix
  validates :security_information_url, format: { with: URL_REGEXP, message: 'You provided an invalid security information URL' }
  validates :gdpr_information_url, format: { with: URL_REGEXP, message: 'You provided an invalid gdpr information URL' }
  validates :list_of_processors_url, format: { with: URL_REGEXP, message: 'You provided an invalid list of processors URL' }

end
