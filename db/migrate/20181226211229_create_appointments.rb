class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.belongs_to :customer, foreign_key: true
      t.belongs_to :service, foreign_key: true
      t.datetime :datetime
      t.timestamps
    end
  end
end
