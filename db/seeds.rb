# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#50.times{|i| Article.create(:title => "Article #{i}", :body =>BetterLorem.p(5, false, false),:position =>"#{i}")}


Article.create(:title=>"My first article" ,:position=>1,:visible=>true,:body=>"<p class='text-center'>this is my first article</p>")
