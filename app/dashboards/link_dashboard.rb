require "administrate/base_dashboard"

class LinkDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    cases: Field::HasMany,
    id: Field::Number,
    url: Field::Text,
    title: Field::String,
    perex: Field::Text,
    img_url: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    is_approved: Field::Boolean,
    approved_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :cases,
    :id,
    :url,
    :title,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :cases,
    :id,
    :url,
    :title,
    :perex,
    :img_url,
    :created_at,
    :updated_at,
    :is_approved,
    :approved_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :cases,
    :url,
    :title,
    :perex,
    :img_url,
    :is_approved,
    :approved_at,
  ].freeze

  # Overwrite this method to customize how links are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(link)
  #   "Link ##{link.id}"
  # end
end
