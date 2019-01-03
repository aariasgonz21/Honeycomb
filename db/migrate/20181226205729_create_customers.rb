class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.text :name
      t.text :location
      t.belongs_to :hairtype, foreign_key: true
      t.string :email
      t.timestamps
    end
  end
end
