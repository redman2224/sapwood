# == Schema Information
#
# Table name: form_submissions
#
#  id         :integer          not null, primary key
#  form_id    :integer
#  idx        :integer          default(0)
#  field_data :text
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe FormSubmission, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
