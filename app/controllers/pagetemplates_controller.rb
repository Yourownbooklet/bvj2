class PagetemplatesController < ApplicationController
  def index
    @pagetemplates = Pagetemplate.all
  end

  def show
    @pagetemplate = Pagetemplate.find(params[:id])
  end

  def new
    @pagetemplate = Pagetemplate.new
  end
end
