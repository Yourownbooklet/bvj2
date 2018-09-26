# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "seeds small started"

booktemplateimages = Booktemplateimage.create([
  {
    booktemplate_id: 11,
    image_id: 111
  },
  {
    booktemplate_id: 11,
    image_id: 112
  },
  {
    booktemplate_id: 11,
    image_id: 113
  },
  {
    booktemplate_id: 11,
    image_id: 114
  },
  {
    booktemplate_id: 11,
    image_id: 122
  },
  {
    booktemplate_id: 11,
    image_id: 123
  }
])

p "seeds done"
