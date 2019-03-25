class Changecolumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :articles, :categories_id, :category_id
  end
end
