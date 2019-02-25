# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "seeds started"

Categoryimage.destroy_all
Imagecategory.destroy_all
Imagecategory.destroy_all
# Booktemplateimage.destroy_all
Booktemplatetext.destroy_all
Booktext.destroy_all
Book.destroy_all
# Pagetemplate.destroy_all
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
    admin: true,
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
  },
  {
    email: 'klant0@bvj.nl',
    first_name: 'Customer',
    last_name: 'Zero van de honderd',
    password: '123456',
    streetname: 'De dr. van Langestraat',
    streetnumber: '123',
    number_extension: '3 hoog',
    postalcode: '1234AB',
    city: 'Groottestad',
    country: 'Nederland',
    phonenumber: '000-1234567',
    geaddresseerde: 'Mijn Nichtje',
    streetname2: 'De allerlangstestraat',
    streetnumber2: '123',
    number2_extension: '3hoog',
    postalcode2: '6789YZ',
    city2: 'De allergrootstestad',
    country2: 'Nederland',
    afleveradreshetzelfde: false,
    company_name: "firma x",
    loyalty_points: 2,
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
    format: "s",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "Afbeelding-2.jpg",
    name: "nieuwskrant",
    format: "s",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "Afbeelding-3a.jpg",
    name: "kopjes",
    format: "s",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "Afbeelding-3b.jpg",
    name: "verpleger",
    format: "s",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "Afbeelding-5.jpg",
    name: "voorpagina kalender",
    format: "p",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "Afbeelding-6.jpg",
    name: "kalender Jan",
    format: "p",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "Afbeelding-7.jpg",
    name: "kalender Feb",
    format: "p",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "Afbeelding-8.jpg",
    name: "kalender Mar",
    format: "p",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "Afbeelding-A.jpg",
    name: "Pot augurken",
    format: "s",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "Afbeelding-B.jpg",
    name: "meerdere",
    format: "s",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "Afbeelding-C.jpg",
    name: "huwelijk man vrouw",
    format: "s",
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
    format: "s",
    imagegallery_id: imagegalleries[0].id
  },
  {
    name: "product 1",
    filename: "product-1.jpg",
    format: "s",
    imagegallery_id: imagegalleries[1].id
  },
  {
    name: "product 2",
    filename: "product-2.jpg",
    format: "s",
    imagegallery_id: imagegalleries[1].id
  },
  {
    name: "product 3",
    filename: "product-3.jpg",
    format: "s",
    imagegallery_id: imagegalleries[1].id
  },
  {
    name: "product 4",
    filename: "product-4.jpg",
    format: "s",
    imagegallery_id: imagegalleries[1].id
  },
  {
    name: "geboorte",
    filename: "geboorte.png",
    format: "s",
    imagegallery_id: imagegalleries[1].id
  },
  {
    name: "verjaardag",
    filename: "verjaardag.png",
    format: "s",
    imagegallery_id: imagegalleries[1].id
  },
  {
    name: "huwelijk",
    filename: "huwelijk.png",
    format: "s",
    imagegallery_id: imagegalleries[1].id
  },
  {
    name: "feestdagen",
    filename: "feestdagen.png",
    format: "s",
    imagegallery_id: imagegalleries[1].id
  },
  {
    name: "overig",
    filename: "overig.png",
    format: "s",
    imagegallery_id: imagegalleries[1].id
  },
  {
    filename: "meisje-p.jpg",
    name: "",
    format: "p",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "meisje-s.jpg",
    name: "",
    format: "s",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "vrouw_spiegel-p.jpg",
    name: "",
    format: "p",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "vrouw_spiegel-s.jpg",
    name: "",
    format: "s",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "diverse_dieren-l.jpg",
    name: "",
    format: "l",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "diploma_zegel-p.jpg",
    name: "",
    format: "p",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "bloempot-p.jpg",
    name: "",
    format: "p",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "bloempotten-l.jpg",
    name: "",
    format: "l",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "bloempotten-s.jpg",
    name: "",
    format: "s",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "speelgoed-p.jpg",
    name: "",
    format: "p",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "speelgoed-s.jpg",
    name: "",
    format: "s",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "veel_geluk_liggend-l.jpg",
    name: "",
    format: "l",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "veel_geluk-p.jpg",
    name: "",
    format: "p",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "veel_geluk-s.jpg",
    name: "",
    format: "s",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "schijfvanvijf-l.jpg",
    name: "",
    format: "l",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "schijfvanvijf-p.jpg",
    name: "",
    format: "p",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "schijfvanvijf-s.jpg",
    name: "",
    format: "s",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "babykamer-s.jpg",
    name: "",
    format: "s",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "babyproducten-p.jpg",
    name: "",
    format: "p",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "babyspullen-s.jpg",
    name: "",
    format: "s",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "een_jongen_liggend-l.jpg",
    name: "",
    format: "l",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "een_jongen-s.jpg",
    name: "",
    format: "s",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "ooievaar_meisje-l.jpg",
    name: "",
    format: "l",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "vrouw_zwanger_l.jpg",
    name: "",
    format: "l",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "vrouw_zwanger-s.jpg",
    name: "",
    format: "s",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "sport-l.jpg",
    name: "",
    format: "l",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "sport-p.jpg",
    name: "",
    format: "p",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "sport-s.jpg",
    name: "",
    format: "s",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "bruidspaar-l.jpg",
    name: "",
    format: "l",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "bruidspaar-s.jpg",
    name: "",
    format: "s",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "felicitatie-s.jpg",
    name: "",
    format: "s",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "just_married-s.jpg",
    name: "",
    format: "s",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "kaarten_schrijven staand-p.jpg",
    name: "",
    format: "p",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "kaarten_schrijven-l.jpg",
    name: "",
    format: "l",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "kaarten_schrijven-s.jpg",
    name: "",
    format: "s",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "trouwauto_just_married-l.jpg",
    name: "",
    format: "l",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "volkswagen_busje-l.jpg",
    name: "",
    format: "l",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "meisje-p.jpg",
    name: "",
    format: "p",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "meisje-s.jpg",
    name: "",
    format: "s",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "vrouw_spiegel-p.jpg",
    name: "",
    format: "p",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "vrouw_spiegel-s.jpg",
    name: "",
    format: "s",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "cadeautjes_3-s.jpg",
    name: "",
    format: "s",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "cadeautjes_2-l.jpg",
    name: "",
    format: "l",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "cadeautjes-p.jpg",
    name: "",
    format: "p",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "jongetje_feesthoedje-l.jpg",
    name: "",
    format: "l",
    imagegallery_id: imagegalleries[0].id
  },
  {
    filename: "jongetje_feestmuts-s.jpg",
    name: "",
    format: "s",
    imagegallery_id: imagegalleries[0].id
  }
])

categories = Category.create([
  {
    name: 'gezin',
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
    Jsfilename: 'booktemplate1_ingrid.js',
    HTMLPrefix: 'ingrid1',
    NrOfPages: 8,
    productsubtype_id: productsubtypes[5].id,
    subcategory_id: subcategories[1].id,
    publisher_id: users[1].id,
    normal_hardcover_extra_price: 3,
    large_hardcover_extra_price: 5,
    normal_price: 10,
    large_price: 15,
    booktemplatetexts: [
      "Boekje voor ~name~",
      "Je hebt van die dagen die je nooit meer vergeet.",
      " is er zo &#x00E9&#x00E9n.",
      "Papa en mama zaten thuis rustig een kopje koffie te drinken.",
      "Afbeelding-3a.jpg",
      "Zou ~name~ vandaag misschien komen?",
      "Papa en Mama zijn naar het ziekenhuis gegaan omdat ~name~ uit mama's buik wil.",
      "Afbeelding-3b.jpg",
      "En ja hoor, daar is ~name~",
      "img4-b.jpg",
      "Wat een prachtig ventje!",
      "img4-g.jpg",
      "Wat een mooi meisje!",
    ],
  },
  {
    name: 'verjaardagscadeau door Ingrid',
    Jsfilename: 'booktemplate2_ingrid.js',
    HTMLPrefix: 'ingrid2',
    NrOfPages: 4,
    productsubtype_id: productsubtypes[18].id,
    subcategory_id: subcategories[4].id,
    publisher_id: users[1].id,
    normal_hardcover_extra_price: 3,
    large_hardcover_extra_price: 5,
    normal_price: 20,
    large_price: 25,
    booktemplatetexts: [],
  }
])

# booktemplateimages = Booktemplateimage.create([
#   {
#     booktemplate_id: booktemplates[0].id,
#     image_id: images[8].id
#   },
#   {
#     booktemplate_id: booktemplates[0].id,
#     image_id: images[9].id
#   },
#   {
#     booktemplate_id: booktemplates[0].id,
#     image_id: images[10].id
#   },
#   {
#     booktemplate_id: booktemplates[0].id,
#     image_id: images[0].id
#   },
#   {
#     booktemplate_id: booktemplates[0].id,
#     image_id: images[1].id
#   },
#   {
#     booktemplate_id: booktemplates[0].id,
#     image_id: images[2].id
#   },
#   {
#     booktemplate_id: booktemplates[0].id,
#     image_id: images[3].id
#   },
#   {
#     booktemplate_id: booktemplates[0].id,
#     image_id: images[11].id
#   },
#   {
#     booktemplate_id: booktemplates[0].id,
#     image_id: images[12].id
#   }
# ])

# pagetemplates = Pagetemplate.create([
#   {
#     name: 'Pagina 1',
#     booktemplate_id: booktemplates[0].id,
#     html: 'cat1_prod5_pub1_p1',
#   },
#   {
#     name: 'Pagina 2',
#     booktemplate_id: booktemplates[0].id,
#     html: 'cat1_prod5_pub1_p2',
#   },
#   {
#     name: 'Pagina 3',
#     booktemplate_id: booktemplates[0].id,
#     html: 'cat1_prod5_pub1_p3',
#   },
#   {
#     name: 'Pagina 4',
#     booktemplate_id: booktemplates[0].id,
#     html: 'cat1_prod5_pub1_p4',
#   },
#   {
#     name: 'Pagina 5',
#     booktemplate_id: booktemplates[0].id,
#     html: 'cat1_prod5_pub1_p5',
#   },
#   {
#     name: 'Pagina 1',
#     booktemplate_id: booktemplates[1].id,
#     html: 'cat4_prod18_pub1_p1',
#   },
#   {
#     name: 'Pagina 2',
#     booktemplate_id: booktemplates[1].id,
#     html: 'cat4_prod18_pub1_p2',
#   },
#   {
#     name: 'Pagina 3',
#     booktemplate_id: booktemplates[1].id,
#     html: 'cat4_prod18_pub1_p3',
#   },
#   {
#     name: 'Pagina 4',
#     booktemplate_id: booktemplates[1].id,
#     html: 'cat4_prod18_pub1_p4',
#   },
# ])

questions = Question.create([
  {
    question: 'Naam van het kind',
    subcategory_id: subcategories[1].id,
    open: true,
    required: true
  },
  {
    question: 'Wat is de geboortedatum',
    subcategory_id: subcategories[1].id,
    open: true,
    required: true
  },
  {
    question: 'Wat is het geslacht van het kindje',
    subcategory_id: subcategories[1].id,
    open: false,
    required: true
  },
  {
    question: 'Waar is het kindje geboren',
    subcategory_id: subcategories[1].id,
    open: false,
    required: true
  },
  {
    question: 'Extra tekst pagina 1',
    subcategory_id: subcategories[1].id,
    open: true,
    required: false
  },
  {
    question: 'Wat is de naam van de jarige',
    subcategory_id: subcategories[4].id,
    open: true,
    required: true
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
    text1: "Boekje voor ~name~",
    text2: "Je hebt van die dagen die je nooit meer vergeet.",
    text3: " is er zo &#x00E9&#x00E9n.",
    text4: "Papa en mama zaten thuis rustig een kopje koffie te drinken.",
    text5: "Afbeelding-3a.jpg",
    text6: "Zou ~name~ vandaag misschien komen?",
    text7: "Papa en Mama zijn naar het ziekenhuis gegaan omdat ~name~ uit mama's buik wil.",
    text8: "Afbeelding-3b.jpg",
    text9: "En ja hoor, daar is ~name~",
    text10: "img4-b.jpg",
    text11: "Wat een prachtig ventje!",
    text12: "img4-g.jpg",
    text13: "Wat een mooi meisje!",
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
    text11: "",
    text12: "",
    text13: ""
  }
])

# booktemplateimages = Booktemplateimage.create([
#   {
#     booktemplate_id: booktemplates[0].id,
#     image_id: images[0].id
#   },
#   {
#     booktemplate_id: booktemplates[0].id,
#     image_id: images[1].id
#   },
#   {
#     booktemplate_id: booktemplates[0].id,
#     image_id: images[2].id
#   },
#   {
#     booktemplate_id: booktemplates[0].id,
#     image_id: images[3].id
#   },
#   {
#     booktemplate_id: booktemplates[0].id,
#     image_id: images[8].id
#   },
#   {
#     booktemplate_id: booktemplates[0].id,
#     image_id: images[9].id
#   }
# ])

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
  },
  {
    name: "flora & fauna",
  }
])

categoryimages = Categoryimage.create([
  {
    image_id: images[0].id,
    imagecategory_id: imagecategories[4].id
  },
  {
    image_id: images[1].id,
    imagecategory_id: imagecategories[4].id
  },
  {
    image_id: images[2].id,
    imagecategory_id: imagecategories[4].id
  },
  {
    image_id: images[3].id,
    imagecategory_id: imagecategories[4].id
  },
  {
    image_id: images[8].id,
    imagecategory_id: imagecategories[6].id
  },
  {
    image_id: images[9].id,
    imagecategory_id: imagecategories[6].id
  },
  {
    image_id: images[10].id,
    imagecategory_id: imagecategories[6].id
  },
  {
    image_id: images[22].id,
    imagecategory_id: imagecategories[7].id
  },
  {
    image_id: images[23].id,
    imagecategory_id: imagecategories[7].id
  },
  {
    image_id: images[24].id,
    imagecategory_id: imagecategories[7].id
  },
  {
    image_id: images[25].id,
    imagecategory_id: imagecategories[7].id
  },
  {
    image_id: images[26].id,
    imagecategory_id: imagecategories[1].id
  },
  {
    image_id: images[27].id,
    imagecategory_id: imagecategories[2].id
  },
  {
    image_id: images[28].id,
    imagecategory_id: imagecategories[2].id
  },
  {
    image_id: images[29].id,
    imagecategory_id: imagecategories[2].id
  },
  {
    image_id: images[30].id,
    imagecategory_id: imagecategories[2].id
  },
  {
    image_id: images[31].id,
    imagecategory_id: imagecategories[2].id
  },
  {
    image_id: images[32].id,
    imagecategory_id: imagecategories[2].id
  },
  {
    image_id: images[33].id,
    imagecategory_id: imagecategories[2].id
  },
  {
    image_id: images[34].id,
    imagecategory_id: imagecategories[2].id
  },
  {
    image_id: images[35].id,
    imagecategory_id: imagecategories[3].id
  },
  {
    image_id: images[36].id,
    imagecategory_id: imagecategories[3].id
  },
  {
    image_id: images[37].id,
    imagecategory_id: imagecategories[3].id
  },
  {
    image_id: images[38].id,
    imagecategory_id: imagecategories[3].id
  },
  {
    image_id: images[39].id,
    imagecategory_id: imagecategories[4].id
  },
  {
    image_id: images[40].id,
    imagecategory_id: imagecategories[4].id
  },
  {
    image_id: images[41].id,
    imagecategory_id: imagecategories[4].id
  },
  {
    image_id: images[42].id,
    imagecategory_id: imagecategories[4].id
  },
  {
    image_id: images[43].id,
    imagecategory_id: imagecategories[4].id
  },
  {
    image_id: images[44].id,
    imagecategory_id: imagecategories[4].id
  },
  {
    image_id: images[45].id,
    imagecategory_id: imagecategories[4].id
  },
  {
    image_id: images[46].id,
    imagecategory_id: imagecategories[4].id
  },
  {
    image_id: images[47].id,
    imagecategory_id: imagecategories[5].id
  },
  {
    image_id: images[48].id,
    imagecategory_id: imagecategories[5].id
  },
  {
    image_id: images[49].id,
    imagecategory_id: imagecategories[5].id
  },
  {
    image_id: images[50].id,
    imagecategory_id: imagecategories[6].id
  },
  {
    image_id: images[51].id,
    imagecategory_id: imagecategories[6].id
  },
  {
    image_id: images[52].id,
    imagecategory_id: imagecategories[6].id
  },
  {
    image_id: images[53].id,
    imagecategory_id: imagecategories[6].id
  },
  {
    image_id: images[54].id,
    imagecategory_id: imagecategories[6].id
  },
  {
    image_id: images[55].id,
    imagecategory_id: imagecategories[6].id
  },
  {
    image_id: images[56].id,
    imagecategory_id: imagecategories[6].id
  },
  {
    image_id: images[57].id,
    imagecategory_id: imagecategories[6].id
  },
  {
    image_id: images[58].id,
    imagecategory_id: imagecategories[6].id
  },
  {
    image_id: images[59].id,
    imagecategory_id: imagecategories[7].id
  },
  {
    image_id: images[60].id,
    imagecategory_id: imagecategories[7].id
  },
  {
    image_id: images[61].id,
    imagecategory_id: imagecategories[7].id
  },
  {
    image_id: images[62].id,
    imagecategory_id: imagecategories[7].id
  },
  {
    image_id: images[63].id,
    imagecategory_id: imagecategories[8].id
  },
  {
    image_id: images[64].id,
    imagecategory_id: imagecategories[8].id
  },
  {
    image_id: images[65].id,
    imagecategory_id: imagecategories[8].id
  },
  {
    image_id: images[66].id,
    imagecategory_id: imagecategories[8].id
  },
  {
    image_id: images[67].id,
    imagecategory_id: imagecategories[8].id
  }
])

p "seeds done"
