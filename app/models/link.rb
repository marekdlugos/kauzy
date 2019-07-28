class Link < ApplicationRecord
  has_and_belongs_to_many :cases

  validates :title, :url, :presence => true
end
