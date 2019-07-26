class Person < ApplicationRecord
  has_person_name
  has_one :profession
  has_and_belongs_to_many :cases

  extend FriendlyId
  friendly_id :name, use: :slugged
end
