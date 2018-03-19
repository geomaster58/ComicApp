class AddTitleToComics < ActiveRecord::Migration[5.1]
  def change
    add_column :comics, :title, :string
  end
end
