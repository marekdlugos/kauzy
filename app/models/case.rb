class Case < ApplicationRecord
  has_and_belongs_to_many :links
end
