class AddDetailsToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :supplier, :text
    add_column :products, :color, :text
  end
end
