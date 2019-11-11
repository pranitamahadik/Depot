class AddDateToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :date, :date
  end
end
