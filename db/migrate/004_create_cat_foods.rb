class CreateCatFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :cat_foods do |t|
      t.string :name
      t.string :image_url
      t.string :description
      t.belongs_to :assassin, foreign_key: true

      t.timestamps
    end
  end
end
