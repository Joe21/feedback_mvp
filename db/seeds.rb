Feedback.delete_all
Image.delete_all

Feedback.create(name: 'Improve buttons', description: 'The button colors do not contrast enough with the background and confuses end-users', weight: 3, date: Time.new(2013, 5, 6), media_link: "http://youtube.com")
Feedback.create(name: 'Improve lists', description: 'The list generated does not resize well on tablets and often times users do not know/see the data', weight: 4, date: Time.new(2013, 5, 6), media_link: "http://youtube.com")