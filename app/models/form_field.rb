# == Schema Information
#
# Table name: form_fields
#
#  id            :integer          not null, primary key
#  form_id       :integer
#  title         :string(255)
#  data_type     :string(255)
#  options       :text
#  required      :boolean          default(FALSE)
#  position      :integer          default(0)
#  created_at    :datetime
#  updated_at    :datetime
#  slug          :string(255)
#  label         :string(255)
#  placeholder   :string(255)
#  default_value :string(255)
#  show_label    :boolean          default(TRUE)
#  hidden        :boolean          default(FALSE)
#

class FormField < ActiveRecord::Base

  # ------------------------------------------ Plugins

  include FormSlug

  # ------------------------------------------ Associations

  belongs_to :form, :touch => true

  # ------------------------------------------ Scopes

  scope :in_position, -> { order('position asc') }
  scope :visible, -> { where(:hidden => false) }

  # ------------------------------------------ Validations

  validates :title, :data_type, :presence => true

  # ------------------------------------------ Instance Methods

  def option_values
    options.split("\n").reject(&:blank?)
  end

end
