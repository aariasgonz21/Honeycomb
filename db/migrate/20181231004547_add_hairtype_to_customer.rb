class AddHairtypeToCustomer < ActiveRecord::Migration[5.2]
  def change
    add_reference :customers, :hairtype, foreign_key: true
  end
end
