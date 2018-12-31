class RemoveHairtypeFromCustomer < ActiveRecord::Migration[5.2]
  def change
    remove_column :customers, :hairtype, :text
  end
end
