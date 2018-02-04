class CreateComics < ActiveRecord::Migration[5.1]
  def change
    create_table :comics do |t|
      t.text :image

      t.timestamps
    end
  end
end
