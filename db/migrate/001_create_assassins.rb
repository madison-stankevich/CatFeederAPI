class CreateAssassins < ActiveRecord::Migration[5.2]
  def change
    create_table :assassins do |t|
      t.string :name
      t.string :image_url
      t.string :description
      t.string :price

      t.timestamps
    end
  end
end
