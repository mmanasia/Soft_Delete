class UserStoreRole < ActiveRecord::Base
  belongs_to :role
  belongs_to :user_store
  acts_as_paranoid

end
