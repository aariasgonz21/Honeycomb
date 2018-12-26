class CreateSalons < ActiveRecord::Migration[5.2]
  def change
    create_table :salons do |t|
      t.text :name
      t.text :price
      t.text :location
      t.text :phone_number

      t.timestamps
    end
  end
end
