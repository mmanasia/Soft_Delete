class MemberGroup < ActiveRecord::Base
  belongs_to :network_user
  belongs_to :user_group

  acts_as_paranoid
end
