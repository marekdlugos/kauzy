class Case < ApplicationRecord
  has_and_belongs_to_many :links
  has_and_belongs_to_many :people

  validates :name, :presence => true, :uniqueness => true
  paginates_per 26

  extend FriendlyId
  friendly_id :name, use: :slugged
end
