# == Schema Information
#
# Table name: reports
#
#  id         :integer          not null, primary key
#  person     :string(255)
#  details    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Report < ActiveRecord::Base
  attr_accessible :details, :person

  validates :person, presence: true
  validates :details, presence: true, uniqueness: { case_sensitive: false }
end
