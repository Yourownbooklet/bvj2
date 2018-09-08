# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "seeds started"

Pagetemplate.destroy_all
Booktemplate.destroy_all
Answer.destroy_all
Question.destroy_all
User.destroy_all
Subcategory.destroy_all
Category.destroy_all
Productsubtype.destroy_all
Producttype.destroy_all
Image.destroy_all
Imagegallery.destroy_all

categories = Category.create([
  {
    name: 'gezinsuitbreiding',
  },
  {
    name: 'verjaardag',
  },
  {
    name: 'huwelijk',
  },
  {
    name: 'feestdagen',
  },
  {
    name: 'overig',
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

pagetemplates = Pagetemplate.create([
  {
    name: 'Pagina 1',
    booktemplate_id: booktemplates[0].id,
    html: '<h1>Boekje voor [answer q1]</h1>
<%= image_tag "Afbeelding 1.jpg", height: 100 %>',
  },
  {
    name: 'Pagina 2',
    booktemplate_id: booktemplates[0].id,
    html: '<div class="tekst-ingrid">Je hebt van die dagen die je nooit meer vergeet</div><div class="tekst-ingrid">[Antwoord vraag 2] is er zo &#x00E9&#x00E9n. </div><%= image_tag "Afbeelding 2.jpg", height: 300 %>',
  },
  {
    name: 'Pagina 3',
    booktemplate_id: booktemplates[0].id,
    html: '<div class="tekst-ingrid">Papa en mama zaten thuis rustig een kopje koffie te drinken. Zou [antwoord vraag 3] vandaag misschien komen?</div><%= image_tag "Afbeelding 3a.jpg", height: 300 %>',
  },
  {
    name: 'Pagina 4',
    booktemplate_id: booktemplates[0].id,
    html: '<% answerq3 = "b" %><div class="tekst-ingrid">En ja hoor, daar is [answer q1].</div><div class="tekst-ingrid">Wat een
<% if answerq3 == "g" %>
mooi meisje.
<br>
<%= image_tag "img4-g.jpg", height: 300 %>
<% end %>
<%  if answerq3 == "b"  %>
prachtig ventje.
<br>
<%= image_tag "img4-b.jpg", height: 300 %>
<% end %>
</div>',
  },
  {
    name: 'Pagina 1',
    booktemplate_id: booktemplates[1].id,
    html: '<h1>Kalender voor [answer Q subcategory_id: 4]</h1><%= image_tag "Afbeelding 5.jpg", height: 400 %>',
  },
  {
    name: 'Pagina 2',
    booktemplate_id: booktemplates[1].id,
    html: '<%= image_tag "Afbeelding 6.jpg", height: 400 %>',
  },
  {
    name: 'Pagina 3',
    booktemplate_id: booktemplates[1].id,
    html: '<%= image_tag "Afbeelding 7.jpg", height: 400 %>',
  },
  {
    name: 'Pagina 4',
    booktemplate_id: booktemplates[1].id,
    html: '<%= image_tag "Afbeelding 8.jpg", height: 400 %>',
  }
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

imagegalleries = Imagegallery.create([
  {
    name: "Afbeeldingen van Ingrid",
    publisher_id: users[1].id
  }
])

images = Image.create([
  {
    name: "rozet",
    imagegallery_id: imagegalleries[0].id
  },
  {
    name: "nieuwskrant",
    imagegallery_id: imagegalleries[0].id
  },
  {
    name: "kopjes",
    imagegallery_id: imagegalleries[0].id
  },
  {
    name: "verpleger",
    imagegallery_id: imagegalleries[0].id
  },
  {
    name: "voorpagina kalender",
    imagegallery_id: imagegalleries[0].id
  },
  {
    name: "kalender Jan",
    imagegallery_id: imagegalleries[0].id
  },
  {
    name: "kalender Feb",
    imagegallery_id: imagegalleries[0].id
  },
  {
    name: "kalender Mar",
    imagegallery_id: imagegalleries[0].id
  },
  {
    name: "Pot augurken",
    imagegallery_id: imagegalleries[0].id
  },
  {
    name: "meerdere",
    imagegallery_id: imagegalleries[0].id
  },
  {
    name: "huwelijk man vrouw",
    imagegallery_id: imagegalleries[0].id
  },
  {
    name: "baby jongen",
    imagegallery_id: imagegalleries[0].id
  },
  {
    name: "baby meisje",
    imagegallery_id: imagegalleries[0].id
  }
])


p "seeds done"
