class CreateDogs < ActiveRecord::Migration[7.1]
  def change
    create_table :dogs do |t|
      t.string :species
      t.string :color
      t.integer :weight
      t.string :image_url

      t.timestamps
    end
  end
end
