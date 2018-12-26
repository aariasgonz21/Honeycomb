class CreateHairStylists < ActiveRecord::Migration[5.2]
  def change
    create_table :hair_stylists do |t|
      t.text :name
      t.text :specialty
      t.integer :years_of_experience
      t.belongs_to :salon, foreign_key: true

      t.timestamps
    end
  end
end
