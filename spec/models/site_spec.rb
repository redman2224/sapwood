# == Schema Information
#
# Table name: sites
#
#  id             :integer          not null, primary key
#  title          :string(255)
#  slug           :string(255)
#  url            :string(255)
#  description    :text
#  created_at     :datetime
#  updated_at     :datetime
#  home_page_id   :integer
#  git_url        :string(255)
#  secondary_urls :text
#

require 'rails_helper'

RSpec.describe Site, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
