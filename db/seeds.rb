# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
SkinType.delete_all

SkinType.create!(id: 1, skin_type_number: 'I-Light', max_unprotected_exposure_time: 67)
SkinType.create!(id: 2, skin_type_number: 'II-Fair', max_unprotected_exposure_time: 100)
SkinType.create!(id: 3, skin_type_number: 'III-Medium', max_unprotected_exposure_time: 200)
SkinType.create!(id: 4, skin_type_number: 'IV-Olive', max_unprotected_exposure_time: 300)
SkinType.create!(id: 5, skin_type_number: 'V-Brown', max_unprotected_exposure_time: 400)
SkinType.create!(id: 6, skin_type_number: 'VI-Black', max_unprotected_exposure_time: 500)


User.create!(email: 'joe@example.com', password: '12345678', password_confirmation: '12345678')
