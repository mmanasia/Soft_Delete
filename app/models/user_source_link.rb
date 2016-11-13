class UserSourceLink < ActiveRecord::Base
  belongs_to :source_link
  belongs_to :user_store
  acts_as_paranoid

end
