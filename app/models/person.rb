class Person < ApplicationRecord
  has_person_name
  has_one :profession
end
