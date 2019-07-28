# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#
# Politicians - data from verejne.digital
#
politicians = ActiveSupport::JSON.decode(File.read('db/seeds/list_politicians.json'))

politicians.each do |p|
  p['first_name'] = p.delete('firstname')
  p['last_name'] = p.delete('surname')
  p['img_url'] = p.delete('picture')
  p.delete('id')
  p.delete('title')
  p.delete('num_houses_flats')
  p.delete('num_fields_gardens')
  p.delete('num_others')
  p.delete('party_abbreviation')
  p.delete('party_nom')
  p.delete('term_start')
  p.delete('term_finish')
  p.delete('office_name_male')
  p.delete('office_name_female')
  p.delete('latest_income')

  Person.find_or_create_by!(p)
end
puts "Created #{Person.count} politicians."

#
# Links
#
[{
  url: 'https://spravy.pravda.sk/domace/clanok/386415-co-bola-kauza-sasanka/',
  title: 'Čo bola kauza Sasanka',
  img_url: 'https://ipravda.sk/res/2016/03/11/thumbs/marian-kocner-clanokW.jpg'
},
 {
   url: 'https://focus.hnonline.sk/politika-s-spolocnost/clanok/1878799-kauza-sasanka',
   title: 'Kauza Sasanka',
   img_url: 'https://cloudia.hnonline.sk/r940x530n/aa7e983face5443fe50a882f72571bcb'
 },
 {
   url: 'https://richardsulik.blog.sme.sk/c/287752/Sasanka-Kocner-a-ja.html',
   title: 'Sasanka, Kočner a ja',
   img_url: 'https://u.smedata.sk/blog/photo//4/63/6394/richard-sulik58201049_0.jpeg?r=27cj'
 }, {
   url: 'https://sk.wikipedia.org/wiki/Kauza_Gorila',
   title: 'Kauza Gorila'
 }, {
   url: 'https://youtu.be/jTzf4opWy4c',
   title: 'TB Mariána Kočnera o kauze Sasanka'
 }, {
   url: 'https://www1.pluska.sk/spravy/z-domova/kauza-sasanka-pokracuje-prokuratura-vysetruje-trestne-oznamenie',
   title: 'Kauza Sasanka pokračuje: Prokuratúra vyšetruje trestné oznámenie',
   img_url: 'https://dam.nmhmedia.sk/image/dadec6f8-1e4a-4000-a106-68aa2459ee27_dam-urleokten.jpg/1120/630'
 }, {
   url: 'https://www.aktuality.sk/clanok/201975/video-sasanky-zaplavilo-internet/',
   title: 'Video Sasanky zaplavilo internet',
   img_url: 'https://t.aimg.sk/magaziny/iyXfXLG0TRCdYslbtBeA2w~Richard-sulik-tmavy-2011-tasr.jpg?t=LzE2MDB4OTAwL3NtYXJ0&h=WXA1amPJ8K8_V5MIChfKCg&e=2145916800&v=1'
 }, {
   url: 'https://domov.sme.sk/c/22000929/kauza-gorila-otazky-a-odpovede.html',
   title: 'Čo je gorila?',
   img_url: 'https://m.smedata.sk/api-media/media/image/sme/5/37/3721425/3721425_1200x.jpeg?rev=3'
 }].each do |attributes|
  Link.find_or_create_by!(attributes)
end
puts "Created #{Link.count} links."

#
# Cases
#
[{
  name: 'Sasanka',
  description: 'Koncom januára 2012 sa krátko pred predčasnými voľbami dostala na verejnosť esemesková komunikácia medzi Sulíkom a kontroverzným podnikateľom Kočnerom, známym z tzv. mafiánskych zoznamov. Neskôr ju doplnilo aj video so škandalóznymi rozhovormi oboch aktérov.'
},
 {
   name: 'Gorila',
   description: 'Prevalila sa uniknutím tajného dokumentu s krycím názvom Gorila zo Slovenskej informačnej služby na verejnosť v decembri 2011. V spise zverejnenom na internete sa nachádzajú informácie o odpočúvaní Jaroslava Haščáka, šéfa investičnej skupiny Penta, počas rokov 2005 a 2006.'
 }].each do |attributes|
  Case.find_or_create_by!(attributes)
end
puts "Created #{Case.count} cases."

#
# Associations
#

sasanka = Case.find_by(name: 'Sasanka')
gorila = Case.find_by(name: 'Gorila')

# Case <> Link
sasanka.links << Link.find_by(title: 'Čo bola kauza Sasanka')
sasanka.links << Link.find_by(title: 'Kauza Sasanka')
sasanka.links << Link.find_by(title: 'Sasanka, Kočner a ja')
sasanka.links << Link.find_by(title: 'TB Mariána Kočnera o kauze Sasanka')
sasanka.links << Link.find_by(title: 'Kauza Sasanka pokračuje: Prokuratúra vyšetruje trestné oznámenie')
gorila.links << Link.find_by(title: 'Čo je gorila?')
gorila.links << Link.find_by(title: 'Kauza Gorila')

# Association Case <> People
sample1 = Person.all.sample(4)
sample2 = Person.all.sample(8)
sample1.each { |person| sasanka.people << person }
sample2.each { |person| gorila.people << person }

#
# Professions
#
[{ name: 'politik' }, { name: 'verejná osobnosť' }, { name: 'podnikateľ' }].each do |attributes|
  Profession.find_or_create_by!(attributes)
end
puts "Created #{Profession.count} professions."

#
# Users
#
user = User.new
user.email = 'admin@kauzy.sk'
user.password = 'mainpassword'
user.password_confirmation = 'mainpassword'
user.save!
puts "Created #{User.count} user."
