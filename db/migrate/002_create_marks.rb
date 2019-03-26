class CreateMarks < ActiveRecord::Migration[5.2]
  def change
    create_table :marks do |t|
      t.string :name
      t.string :image_url
      t.string :description
      t.boolean :alive
      t.belongs_to :assassin, foreign_key: true

      t.timestamps
    end
  end
end
