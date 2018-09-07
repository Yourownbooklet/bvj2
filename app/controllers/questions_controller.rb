class QuestionsController < ApplicationController
  def index
    @questions = Question.where(subcategory_id: @subcategory)
  end

  def new
    @question = Question.new
  end
end
