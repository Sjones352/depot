class RemoveFieldsToProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :type, :string
    remove_column :products, :supplier, :string
    remove_column :products, :color, :string
  end
end
