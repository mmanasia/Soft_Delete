class SourceLink < ActiveRecord::Base
  has_many :cert_source_links
  has_many :user_source_links
  acts_as_paranoid

end
