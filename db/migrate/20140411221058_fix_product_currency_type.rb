class FixProductCurrencyType < ActiveRecord::Migration
  def change
    remove_column :products, :price
    add_column :products, :price, :money
  end
end
