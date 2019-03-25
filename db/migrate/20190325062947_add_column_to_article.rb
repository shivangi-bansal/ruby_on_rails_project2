class AddColumnToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :user_id,:integer
    add_column :articles, :categories_id,:integer
  end
end
