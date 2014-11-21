# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  site_id    :integer
#  image      :string(255)
#  created_at :datetime
#  updated_at :datetime
#  idx        :integer          default(0)
#  crop_data  :text
#

FactoryGirl.define do
  factory :image do
    gallery_id 1
image "MyString"
  end

end
