class CertStoreRole < ActiveRecord::Base
  belongs_to :role
  belongs_to :cert_store
  acts_as_paranoid
end
