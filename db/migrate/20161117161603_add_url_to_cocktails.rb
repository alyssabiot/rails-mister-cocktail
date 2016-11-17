class AddUrlToCocktails < ActiveRecord::Migration[5.0]
  def change
    add_column :cocktails, :url, :string
  end
end
