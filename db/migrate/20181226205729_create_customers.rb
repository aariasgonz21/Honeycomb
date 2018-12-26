class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.text :name
      t.text :hairtype
      t.text :location

      t.timestamps
    end
  end
end
