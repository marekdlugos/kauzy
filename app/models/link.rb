class Link < ApplicationRecord
  has_and_belongs_to_many :cases
end
