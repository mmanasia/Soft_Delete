class Source < ActiveRecord::Base
  has_many :cert_stores
  has_many :user_stores

  validates :SourceDescription, presence: true

  acts_as_paranoid
end
