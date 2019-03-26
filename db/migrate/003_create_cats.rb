class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :image_url
      t.string :description
      t.belongs_to :mark, foreign_key: true

      t.timestamps
    end
  end
end
