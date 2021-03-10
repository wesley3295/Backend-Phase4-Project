# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(first_name: 'Wesley',last_name: 'Spencer',email:'wpsencer3295@yahoo.com',github:'https://github.com/wesley3295',linkdn:'https://www.linkedin.com/in/wesley-spencer-5562a8207/',facebook:'https://www.facebook.com/wesley3295',twitter:'http://twitter.com/',reddit:'http://reddit.com/',youtube:'https://www.youtube.com/channel/UCStnLxL4LPj3cckjYYwYxGQ')
Project.create(title:"Javascript Project",project_link:"https://github.com/wesley3295/Frontend-Phase4-Project",video_link:'https://www.youtube.com/watch?v=JGeWvEVitzo',cohort:'onl01-seng-ft-110920-a',blog_link:'https://wesley3295.medium.com/scope-628268c90eb2',user_id: 1)