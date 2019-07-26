class Case < ApplicationRecord
  has_and_belongs_to_many :links
  has_and_belongs_to_many :people

  extend FriendlyId
  friendly_id :name, use: :slugged
end
