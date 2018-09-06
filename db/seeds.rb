# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "seeds started"

Category.destroy_all
Subcategory.destroy_all
Producttype.destroy_all
Productsubtype.destroy_all
User.destroy_all
Booktemplate.destroy_all
Pagetemplate.destroy_all
Question.destroy_all
Answer.destroy_all

categories = Category.create([
  {
    name: 'Gezinsuitbreiding',
  },
  {
    name: 'Verjaardag',
  },
  {
    name: 'Huwelijk',
  },
  {
    name: 'Feestdagen',
  },
  {
    name: 'Overig',
  }
])

subcategories = Subcategory.create([
  {
    name: 'Zwanger',
    category_id: categories[0].id
  },
  {
    name: 'Geboorte',
    category_id: categories[0].id
  },
  {
    name: 'Adoptie',
    category_id: categories[0].id
  },
  {
    name: 'Pleegkind',
    category_id: categories[0].id
  }
])


users = User.create([
  {
    email: 'test@test.com',
    first_name: 'John',
    last_name: 'Doe',
    password: '123456',
  },
  {
    email: 'test2@test.com',
    first_name: 'Henk',
    last_name: 'Habraken',
    password: '123456',
  },
  {
    email: 'test3@test.com',
    first_name: 'Piet',
    last_name: 'Jansen',
    password: '123456',
  }
])




p "seeds done"
