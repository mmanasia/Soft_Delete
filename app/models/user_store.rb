class UserStore < ActiveRecord::Base
  belongs_to :source
  belongs_to :environment
  belongs_to :identity_type
  has_many :user_source_links
  has_many :user_store_roles
  acts_as_paranoid

  validates :UserStoreName, :UserStorePassword, :UserStoreExpirationDate, :source_id, :environment_id, :identity_type_id, presence: true

end
