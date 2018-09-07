class AddQuestionToBookanswer < ActiveRecord::Migration[5.1]
  def change
    add_reference :bookanswers, :question, foreign_key: true
  end
end
