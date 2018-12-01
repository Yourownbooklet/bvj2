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


rails g migration AddMitemsToUser streetname:string streetnumber:integer number_extension:string postalcode:string city:string country:string phonenumber:string
rails g migration AddEditedToBook book edited:boolean

rails g migration AddBooktemplateToBooktemplatetext booktemplate:references

rails g migration AddItemsToImage type:string filename:string

rails g migration AddBookToBookimage book:references
rails g migration AddImageToBookimage image:references


rails g migration AddBooktemplateToBooktemplateimage booktemplate:references
rails g migration AddImageToBooktemplateimage image:references

rails g migration AddAfleveradresToUser geaddresseerde:string streetname2:string streetnumber2:integer number2_extension:string postalcode2:string city2:string country2:string
rails g migration AddAfleveradreshetzelfdeToUser afleveradreshetzelfde:boolean, default: true

rails g migration AddImageToCategoryimage image:references
rails g migration AddImagecategoryToCategoryimage Imagecategory:references
rails g migration AddJsfilenameToBooktemplate Jsfilename:string

rails g migration AddHTMLPrefixToBooktemplate HTMLPrefix:string
rails g migration AddNrOfPagesToBooktemplate NrOfPages:integer
