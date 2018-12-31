class CreateHairtypes < ActiveRecord::Migration[5.2]
  def change
    create_table :hairtypes do |t|
      t.text :name
      t.text :description
      t.string :img_url

      t.timestamps
    end
  end
end
