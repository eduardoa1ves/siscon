class Group < ActiveRecord::Base
  has_one :about
  has_many :group_administrators
  has_many :group_moderators
end
