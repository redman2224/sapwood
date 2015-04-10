# == Schema Information
#
# Table name: site_settings
#
#  id         :integer          not null, primary key
#  site_id    :integer
#  title      :string(255)
#  slug       :string(255)
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#

class SiteSetting < ActiveRecord::Base

  # ------------------------------------------ Plugins

  include SiteSlug

  # ------------------------------------------ Associations

  belongs_to :site

  # ------------------------------------------ Validations

  validates :title, :presence => true

end
