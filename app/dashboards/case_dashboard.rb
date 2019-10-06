require "administrate/base_dashboard"

class CaseDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    links: Field::HasMany,
    people: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    description: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    slug: Field::String,
    is_approved: Field::Boolean,
    approved_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :links,
    :people,
    :id,
    :name,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :links,
    :people,
    :id,
    :name,
    :description,
    :created_at,
    :updated_at,
    :slug,
    :is_approved,
    :approved_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :links,
    :people,
    :name,
    :description,
    :slug,
    :is_approved,
    :approved_at,
  ].freeze

  # Overwrite this method to customize how cases are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(case)
  #   "Case ##{case.id}"
  # end
end
