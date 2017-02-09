# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  Article.create!(
    title: 'some text goes here',
    summary: 'some summary text goes here again, and more text',
    description: 'With me, is a simple to-do list application where users can create dummy to-do lists and displays them in card-like form just like in Trello. We want to enable users to sort the list by drag and drop so that they are displayed in the specific order the user sets them.',
    image: 'http://nafootball.com/uploads/video/picture/86/%D0%9E%D0%91%D0%97%D0%9E%D0%A01-min.jpg',
    technology: 'Ruby on Rails 5, API, Angular 2')
end
