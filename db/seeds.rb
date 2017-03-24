# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.new
admin.first_name = "Jordan"
admin.last_name = "Etzler"
admin.user_name = "jozzzaa"
admin.email = "jordan@aruza.co"
admin.password = "jordan"
admin.save

admin = User.new
admin.first_name = "Fay"
admin.last_name = "Selby"
admin.user_name = "fselby"
admin.email = "lessons@exceldrive.com.au"
admin.password = "exceldrive48"
admin.save

# Win your P's Post
campaign1 = Campaign.new
campaign1.name ="Win your P's - General Post"
campaign1.description = ""
campaign1.ref_code = "3H8xP"
campaign1.save

#Retargeting Drivers
campaign2 = Campaign.new
campaign2.name = "Buy 5 Lessons, 6th Free - Retargeting"
campaign2.description = ""
campaign2.ref_code = "mUv01I"
campaign2.save

# lead1 = Lead.new
# lead1.name = "Jordan (Practice)"
# lead1.email = "jordan@aruza.co"
# lead1.phone_number = "0421 160 886"
# lead1.gender_pref = "Male"
# lead1.transmission_pref = "Automatic"
# lead1.location = "Adelaide"
# lead1.hours_completed = "2000 Hours"
# lead1.license_by = "Already have it"
# lead1.campaign_id = 2
# lead1.save
