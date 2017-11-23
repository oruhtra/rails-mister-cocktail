class ChangeColumnDescriptionToTextInCocktails < ActiveRecord::Migration[5.1]
  def change
    change_column :cocktails, :description, :text
  end
end
