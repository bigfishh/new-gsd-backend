# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

annie = User.create(username: 'annie', password: 'a', img_url: "https://avatars2.githubusercontent.com/u/24644341?s=460&v=4", bio: "biobiobiobiobio")
alex = User.create(username: 'alex', password: 'a', img_url: "https://avatars2.githubusercontent.com/u/43193919?s=460&v=4", bio: "bio1bio1bio1bio1bio1")

social = Category.create(name: "Social")
work = Category.create(name: "Work")

annieTask = TodoTask.create(user: annie, title: "get food", description: "lunch with Jessie", completed: false, category: social)
annieTask2 = TodoTask.create(user: annie, title: "going to the movies", description: "watch Little Women with Anna", completed: true, category: social)
annieTask3 = TodoTask.create(user: annie, title: "finish first draft", description: "finish first draft of upcoming blog", completed: false, category: work)



alexTask = TodoTask.create(user: alex, title: "project", description: "build out design", completed: true, category: work)