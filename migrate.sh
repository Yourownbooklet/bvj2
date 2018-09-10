rails g migration AddSubcategoryToBooktemplate subcategory:references
rails g migration AddProducttypeToProductsubtype producttype:references
rails g migration AddProductsubtypeToPagetemplate productsubtype:references
rails g migration AddCategoryToSubcategory category:references
rails g migration AddSubcategoryToQuestion subcategory:references
rails g migration AddQuestionToAnswer question:references
rails g migration AddImagegalleryToSubcategory imagegallery:references
rails g migration AddPublisherToImagegallery publisher:references
rails g migration AddImagegalleryToImage imagegallery:references
rails g migration AddBookToOrder book:references
rails g migration AddBuyerToOrder buyer:references

rails g migration AddBooktemplateToBook booktemplate:references


rails g migration AddQuestionToBookanswer question:references
rails g migration AddBookToBookanswer book:references

rails g migration AddImageToSubcategory image:references
rails g migration AddImageToCategory image:references


rails g migration AddItemsToUser user address1:string address2:string postalcode:string city:string country:string phonenumber:string
