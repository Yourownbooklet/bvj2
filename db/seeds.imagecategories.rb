# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "seed imagecategories started"

imagecategories = Imagecategory.create([
  {
    name: "dieren",
  },
  {
    name: "diploma",
  },
  {
    name: "divers",
  },
  {
    name: "eten & drinken",
  },
  {
    name: "geboorte",
  },
  {
    name: "hobby",
  },
  {
    name: "huwelijk",
  },
  {
    name: "mensen",
  },
  {
    name: "verjaardag",
  }
])

categoryimages = Categoryimage.create([
  {
    image_id: 1,
    imagecategory_id: imagecategories[4].id
  },
  {
    image_id: 2,
    imagecategory_id: imagecategories[4].id
  },
  {
    image_id: 3,
    imagecategory_id: imagecategories[4].id
  },
  {
    image_id: 4,
    imagecategory_id: imagecategories[4].id
  },
  {
    image_id: 9,
    imagecategory_id: imagecategories[6].id
  },
  {
    image_id: 10,
    imagecategory_id: imagecategories[6].id
  },
  {
    image_id: 11,
    imagecategory_id: imagecategories[6].id
  },
])

p "seeds done"
