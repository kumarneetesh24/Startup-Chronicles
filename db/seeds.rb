# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#50.times{|i| Article.create(:title => "Article #{i}", :body =>BetterLorem.p(5, false, false),:position =>"#{i}")}

AdminUser.create(:first_name =>"neetesh",:last_name => "kumar",:username =>"kumarneetesh24",:email=>"kumarneetesh24@gmail.com",:password=>"mypass",:visible =>true)