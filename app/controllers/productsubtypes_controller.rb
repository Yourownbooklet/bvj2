class ProductsubtypesController < ApplicationController
  def index
    @productsubtypes = Productsubtype.where(producttype_id: @producttype)
  end
end
