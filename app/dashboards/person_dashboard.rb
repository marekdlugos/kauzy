require "administrate/base_dashboard"

class PersonDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    profession: Field::HasOne,
    cases: Field::HasMany,
    id: Field::Number,
    first_name: Field::String,
    last_name: Field::String,
    img_url: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    profession_id: Field::Number,
    slug: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :profession,
    :cases,
    :id,
    :first_name,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :profession,
    :cases,
    :id,
    :first_name,
    :last_name,
    :img_url,
    :created_at,
    :updated_at,
    :profession_id,
    :slug,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :profession,
    :cases,
    :first_name,
    :last_name,
    :img_url,
    :profession_id,
    :slug,
  ].freeze

  # Overwrite this method to customize how people are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(person)
  #   "Person ##{person.id}"
  # end
end
