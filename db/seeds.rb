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

  Person.find_or_create_by!(p)
end
puts "Created #{Person.count} politicians."

Case.create!([{
  name: "Sasanka",
  description: "Koncom januára 2012 sa krátko pred predčasnými voľbami dostala na verejnosť esemesková komunikácia medzi Sulíkom a kontroverzným podnikateľom Kočnerom, známym z tzv. mafiánskych zoznamov. Neskôr ju doplnilo aj video so škandalóznymi rozhovormi oboch aktérov.",
},
{
  name: "Gorila",
  description: "Prevalila sa uniknutím tajného dokumentu s krycím názvom Gorila zo Slovenskej informačnej služby na verejnosť v decembri 2011. V spise zverejnenom na internete sa nachádzajú informácie o odpočúvaní Jaroslava Haščáka, šéfa investičnej skupiny Penta, počas rokov 2005 a 2006.",
}])
puts "Created #{Case.count} cases."

Profession.create!([{name: "politik"}, {name: "verejná osobnosť"}, {name: "podnikateľ"}])
puts "Created #{Profession.count} professions."

user = User.new
user.email = 'admin@kauzy.sk'
user.password = 'mainpassword'
user.password_confirmation = 'mainpassword'
user.save!
puts "Created #{User.count} user."