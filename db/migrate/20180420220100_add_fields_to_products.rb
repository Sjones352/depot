class AddFieldsToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :type, :string
    add_column :products, :supplier, :string
    add_column :products, :color, :string
  end
end
