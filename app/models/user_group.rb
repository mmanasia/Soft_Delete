class UserGroup < ActiveRecord::Base
  has_many :member_groups

  validates :UserGroupName, presence: true
  acts_as_paranoid

end
