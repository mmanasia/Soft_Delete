class CertSourceLink < ActiveRecord::Base
  belongs_to :source_link
  belongs_to :cert_store
  acts_as_paranoid

end
