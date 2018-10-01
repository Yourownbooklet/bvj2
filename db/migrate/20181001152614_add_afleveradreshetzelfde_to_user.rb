class AddAfleveradreshetzelfdeToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :afleveradreshetzelfde, :boolean, default: true
  end
end
