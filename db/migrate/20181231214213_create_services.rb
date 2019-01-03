class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :name
      t.integer :price
      t.belongs_to :hair_stylist, foreign_key: true
      t.timestamps
    end
  end
end
