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


rails g migration AddMitemsToUser streetname:string streetnumber:integer number-extension:string postalcode:string city:string country:string phonenumber:string
rails g migration AddEditedToBook book edited:boolean

rails g migration AddBooktemplateToBooktemplatetext booktemplate:references

rails g migration AddItemsToImage type:string filename:string

rails g migration AddBookToBookimage book:references
rails g migration AddImageToBookimage image:references


rails g migration AddBooktemplateToBooktemplateimage booktemplate:references
rails g migration AddImageToBooktemplateimage image:references

