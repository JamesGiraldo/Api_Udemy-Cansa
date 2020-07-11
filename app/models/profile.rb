# == Schema Information
#
# Table name: profiles
#
#  id         :integer          not null, primary key
#  name       :string
#  last_name  :string
#  age        :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Profile < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true
end
