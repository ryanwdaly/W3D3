# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#create_users
user1 = User.new(email: 'user1@gmail.com')#id = 1
user2 = User.new(email: 'user2@yahoo.com')#id = 2
user3 = User.new(email: 'user3@hotmail.com')#id = 3
user1.save
user2.save
user3.save

#create_urls
url1 = ShortenedUrl.random_code(user1, 'birds.com')# id =1
url2 = ShortenedUrl.random_code(user1, 'boatsandbirds.com')#id = 2
url3 = ShortenedUrl.random_code(user3, 'vipers.com')#id = 3
url4 = ShortenedUrl.random_code(user1, 'everything.com')#id = 4
url1.save
url2.save
url3.save
url4.save

visit1 = Visit.new(user_id: 1, shortened_url_id: 1)
visit2 = Visit.new(user_id: 2, shortened_url_id: 1)
visit3 = Visit.new(user_id: 3, shortened_url_id: 2)
visit4 = Visit.new(user_id: 3, shortened_url_id: 3)
visit1.save
visit2.save
visit3.save
visit4.save

tag1 = TagTopic.new(topic: 'birds')
tag2 = TagTopic.new(topic: 'boats')
tag3 = TagTopic.new(topic: 'vipers')
tag4 = TagTopic.new(topic: 'Toyota Tacoma')
tag1.save
tag2.save
tag3.save
tag4.save

tagging1 = Tagging.new(tag_topic_id: 1, short_url_id: 1)
tagging2 = Tagging.new(tag_topic_id: 1, short_url_id: 2)
tagging3 = Tagging.new(tag_topic_id: 2, short_url_id: 2)
tagging4 = Tagging.new(tag_topic_id: 3, short_url_id: 3)
tagging5 = Tagging.new(tag_topic_id: 1, short_url_id: 4)
tagging6 = Tagging.new(tag_topic_id: 2, short_url_id: 4)
tagging7 = Tagging.new(tag_topic_id: 3, short_url_id: 4)
tagging8 = Tagging.new(tag_topic_id: 4, short_url_id: 4)
tagging1.save
tagging2.save
tagging3.save
tagging4.save
tagging5.save
tagging6.save
tagging7.save
tagging8.save
