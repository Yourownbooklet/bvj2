# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "seeds started"

Booktemplateimage.destroy_all
Booktemplatetext.destroy_all
Booktext.destroy_all
Book.destroy_all
Pagetemplate.destroy_all
Booktemplate.destroy_all
Answer.destroy_all
Question.destroy_all
Subcategory.destroy_all
Category.destroy_all
Productsubtype.destroy_all
Producttype.destroy_all
Image.destroy_all
Imagegallery.destroy_all
User.destroy_all

users = User.create([
  {
    email: 'vrolijk@bvj.nl',
    first_name: 'Kristel',
    last_name: 'Vrolijk',
    password: '123456',
  },
  {
    email: 'vormgever@bvj.nl',
    first_name: 'Ingrid',
    last_name: 'vormgever',
    password: '123456',
  },
  {
    email: 'klant@bvj.nl',
    first_name: 'Henk',
    last_name: 'Klant',
    password: '123456',
  }
])

imagegalleries = Imagegallery.create([
  {
    name: "Afbeeldingen van Ingrid",
    publisher_id: users[1].id
  },
  {
    name: "Afbeeldingen van Kristel",
    publisher_id: users[0].id
  }
])

images = Image.create([
  {
    filename: "Afbeelding-1.jpg",
    name: "rozet",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "Afbeelding-2.jpg",
    name: "nieuwskrant",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "Afbeelding-3a.jpg",
    name: "kopjes",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "Afbeelding-3b.jpg",
    name: "verpleger",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "Afbeelding-5.jpg",
    name: "voorpagina kalender",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "Afbeelding-6.jpg",
    name: "kalender Jan",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "Afbeelding-7.jpg",
    name: "kalender Feb",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "Afbeelding-8.jpg",
    name: "kalender Mar",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "Afbeelding-A.jpg",
    name: "Pot augurken",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "Afbeelding-B.jpg",
    name: "meerdere",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "Afbeelding-C.jpg",
    name: "huwelijk man vrouw",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "img4-b.jpg",
    name: "baby jongen",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "img4-g.jpg",
    name: "baby meisje",
    imagegallery_id: imagegalleries[0].id
  },
  {
    name: "product 1",
    filename: "product-1.jpg",
    imagegallery_id: imagegalleries[1].id
  },
  {
    name: "product 2",
    filename: "product-2.jpg",
    imagegallery_id: imagegalleries[1].id
  },
  {
    name: "product 3",
    filename: "product-3.jpg",
    imagegallery_id: imagegalleries[1].id
  },
  {
    name: "product 4",
    filename: "product-4.jpg",
    imagegallery_id: imagegalleries[1].id
  },
  {
    name: "geboorte",
    filename: "geboorte.png",
    imagegallery_id: imagegalleries[1].id
  },
  {
    name: "verjaardag",
    filename: "verjaardag.png",
    imagegallery_id: imagegalleries[1].id
  },
  {
    name: "huwelijk",
    filename: "huwelijk.png",
    imagegallery_id: imagegalleries[1].id
  },
  {
    name: "feestdagen",
    filename: "feestdagen.png",
    imagegallery_id: imagegalleries[1].id
  },
  {
    name: "overig",
    filename: "overig.png",
    imagegallery_id: imagegalleries[1].id
  }
])

categories = Category.create([
  {
    name: 'gezinsuitbreiding',
    image_id: images[17].id
  },
  {
    name: 'verjaardag',
    image_id: images[18].id
  },
  {
    name: 'huwelijk',
    image_id: images[19].id
  },
  {
    name: 'feestdagen',
    image_id: images[20].id
  },
  {
    name: 'overig',
    image_id: images[21].id
  }
])

subcategories = Subcategory.create([
  {
    name: 'zwanger',
    category_id: categories[0].id
  },
  {
    name: 'geboorte',
    category_id: categories[0].id
  },
  {
    name: 'adoptie',
    category_id: categories[0].id
  },
  {
    name: 'pleegkind',
    category_id: categories[0].id
  },
  {
    name: 'verjaardag',
    category_id: categories[1].id
  },
  {
    name: 'vrouw en man',
    category_id: categories[2].id
  },
  {
    name: 'twee vrouwen',
    category_id: categories[2].id
  },
  {
    name: 'twee mannen',
    category_id: categories[2].id
  },
  {
    name: 'jubileum',
    category_id: categories[2].id
  },
  {
    name: 'pasen',
    category_id: categories[3].id
  },
  {
    name: 'suikerfeest',
    category_id: categories[3].id
  },
  {
    name: 'sinterklaas',
    category_id: categories[3].id
  },
  {
    name: 'kerstmis',
    category_id: categories[3].id
  },
  {
    name: 'oud & nieuw',
    category_id: categories[3].id
  },
  {
    name: 'vakantie',
    category_id: categories[4].id
  },
  {
    name: 'verhuizing',
    category_id: categories[4].id
  },
  {
    name: 'diploma',
    category_id: categories[4].id
  },
  {
    name: 'beterschap',
    category_id: categories[4].id
  },
  {
    name: 'beloning',
    category_id: categories[4].id
  },
  {
    name: 'zomaar',
    category_id: categories[4].id
  },
])

producttypes = Producttype.create([
  {
    name: 'voorleesboek',
  },
  {
    name: 'invulboek',
  },
  {
    name: 'naslagboek',
  },
  {
    name: 'doe-boek',
  },
  {
    name: 'kalender',
  }
])

productsubtypes = Productsubtype.create([
  {
    name: 'biologisch verhaal',
    producttype_id: producttypes[0].id
  },
  {
    name: 'fictief verhaal',
    producttype_id: producttypes[0].id
  },
  {
    name: 'aftelboek',
    producttype_id: producttypes[0].id
  },
  {
    name: 'receptieboek',
    producttype_id: producttypes[1].id
  },
  {
    name: 'gastenboek',
    producttype_id: producttypes[1].id
  },
  {
    name: 'kraambezoekboek',
    producttype_id: producttypes[1].id
  },
  {
    name: 'dagboek',
    producttype_id: producttypes[1].id
  },
  {
    name: 'logboek',
    producttype_id: producttypes[1].id
  },
  {
    name: 'vriendenboek',
    producttype_id: producttypes[1].id
  },
  {
    name: 'babyboek',
    producttype_id: producttypes[1].id
  },
  {
    name: 'liedjesboek',
    producttype_id: producttypes[2].id
  },
  {
    name: 'woordenboek',
    producttype_id: producttypes[2].id
  },
  {
    name: 'kookboek',
    producttype_id: producttypes[2].id
  },
  {
    name: 'tekenboek',
    producttype_id: producttypes[3].id
  },
  {
    name: 'vakantieboek',
    producttype_id: producttypes[3].id
  },
  {
    name: 'achterbankboek',
    producttype_id: producttypes[3].id
  },
  {
    name: 'family planner',
    producttype_id: producttypes[4].id
  },
  {
    name: 'agenda',
    producttype_id: producttypes[4].id
  },
  {
    name: 'verjaardagskalender',
    producttype_id: producttypes[4].id
  }
])


booktemplates = Booktemplate.create([
  {
    name: 'kraamcadeau door Ingrid',
    productsubtype_id: productsubtypes[5].id,
    subcategory_id: subcategories[1].id,
    publisher_id: users[1].id,
  },
  {
    name: 'verjaardagscadeau door Ingrid',
    productsubtype_id: productsubtypes[18].id,
    subcategory_id: subcategories[4].id,
    publisher_id: users[1].id,
  }
])

booktemplateimages = Booktemplateimage.create([
  {
    booktemplate_id: booktemplates[0].id,
    image_id: images[8].id
  },
  {
    booktemplate_id: booktemplates[0].id,
    image_id: images[9].id
  },
  {
    booktemplate_id: booktemplates[0].id,
    image_id: images[10].id
  }
])

pagetemplates = Pagetemplate.create([
  {
    name: 'Pagina 1',
    booktemplate_id: booktemplates[0].id,
    html: 'cat1_prod5_pub1_p1',
  },
  {
    name: 'Pagina 2',
    booktemplate_id: booktemplates[0].id,
    html: 'cat1_prod5_pub1_p2',
  },
  {
    name: 'Pagina 3',
    booktemplate_id: booktemplates[0].id,
    html: 'cat1_prod5_pub1_p3',
  },
  {
    name: 'Pagina 4',
    booktemplate_id: booktemplates[0].id,
    html: 'cat1_prod5_pub1_p4',
  },
  {
    name: 'Pagina 1',
    booktemplate_id: booktemplates[1].id,
    html: 'cat4_prod18_pub1_p1',
  },
  {
    name: 'Pagina 2',
    booktemplate_id: booktemplates[1].id,
    html: 'cat4_prod18_pub1_p2',
  },
  {
    name: 'Pagina 3',
    booktemplate_id: booktemplates[1].id,
    html: 'cat4_prod18_pub1_p3',
  },
  {
    name: 'Pagina 4',
    booktemplate_id: booktemplates[1].id,
    html: 'cat4_prod18_pub1_p4',
  },
])

questions = Question.create([
  {
    question: 'Naam van het kind',
    subcategory_id: subcategories[1].id,
    open: true
  },
  {
    question: 'Wat is de geboortedatum',
    subcategory_id: subcategories[1].id,
    open: true
  },
  {
    question: 'Wat is het geslacht van het kindje',
    subcategory_id: subcategories[1].id,
    open: false
  },
  {
    question: 'Waar is het kindje geboren',
    subcategory_id: subcategories[1].id,
    open: false
  },
  {
    question: 'Wat is de naam van de jarige',
    subcategory_id: subcategories[4].id,
    open: true
  }
])

answers = Answer.create([
  {
    answer: "jongen",
    question_id: questions[2].id
  },
  {
    answer: "meisje",
    question_id: questions[2].id
  },
  {
    answer: "onbekend",
    question_id: questions[2].id
  },
  {
    answer: "thuis",
    question_id: questions[3].id
  },
  {
    answer: "in het ziekenhuis",
    question_id: questions[3].id
  },
  {
    answer: "onderweg",
    question_id: questions[3].id
  }
])

# &#x0040 = @ -- &#x0022 = " -- &#x0025 = %

booktemplatetexts = Booktemplatetext.create([
  {
    booktemplate_id: booktemplates[0].id,
    text1: "Boekje voor<span class='answerq1'><%= @questions[0].question %><\/span>",
    text2: "Je hebt van die dagen die je nooit meer vergeet.",
    text3: "<&#x0025= &#x0040booktexts[0].text2 &#x0025> is er zo &#x00E9&#x00E9n.",
    text4: "Papa en mama zaten thuis rustig een kopje koffie te drinken.",
    text5: "<img src=&#x0022/assets/Afbeelding-3a.jpg&#x0022 class=&#x0022img-voorleesboek-ingrid&#x0022>",
    text6: "Zou <&#x0025= &#x0040booktexts[0].text1 &#x0025> vandaag misschien komen?",
    text7: "Papa en Mama zijn naar het ziekenhuis gegaan omdat <&#x0025= &#x0040booktexts[0].text1 &#x0025> uit mama's buik wil.",
    text8: "<img src=&#x0022/assets/Afbeelding-3b.jpg&#x0022 class=&#x0022img-voorleesboek-ingrid&#x0022>",
    text9: "En ja hoor, daar is <span class=&#x0022answerq1&#x0022><&#x0025= &#x0040questions[0].question &#x0025> </span>.",
    text10: "<img src=&#x0022/assets/img4-b.jpg&#x0022 class=&#x0022img-voorleesboek-ingrid&#x0022><div class=&#x0022tekstbox-voorleesboek-ingrid&#x0022>Wat een prachtig ventje!</div>",
    text11: ""
  },
  {
    booktemplate_id: booktemplates[1].id,
    text1: "",
    text2: "",
    text3: "",
    text4: "",
    text5: "",
    text6: "",
    text7: "",
    text8: "",
    text9: "",
    text10: "",
    text11: ""
  }
])

p "seeds done"
