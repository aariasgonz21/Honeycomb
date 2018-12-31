class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.belongs_to :customer, foreign_key: true
      t.belongs_to :hair_stylist, foreign_key: true
      t.belongs_to :service, foreign_key: true
      t.text :date
      t.text :time

      t.timestamps
    end
  end
end
