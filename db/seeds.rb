# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

filename = File.read(File.join(Rails.root, "seed_data.json"))
data = JSON.load(filename)
data['issues'].each do |issue|
    Issue.create!(issue)
end
