# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

politicians = ActiveSupport::JSON.decode(File.read('db/seeds/list_politicians.json'))

politicians.each do |p|
  p["first_name"] = p.delete("firstname")
  p["last_name"] = p.delete("surname")
  p["img_url"] = p.delete("picture")
  p.delete("id")
  p.delete("title")
  p.delete("num_houses_flats")
  p.delete("num_fields_gardens")
  p.delete("num_others")
  p.delete("party_abbreviation")
  p.delete("party_nom")
  p.delete("term_start")
  p.delete("term_finish")
  p.delete("office_name_male")
  p.delete("office_name_female")
  p.delete("latest_income")

  Person.create!(p)
end
puts "Politicians were seeded in the database."