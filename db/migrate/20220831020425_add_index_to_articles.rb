class AddIndexToArticles < ActiveRecord::Migration[7.0]
  def change
    add_reference :articles, :user, foreign_key: true, null: false
  end
end
