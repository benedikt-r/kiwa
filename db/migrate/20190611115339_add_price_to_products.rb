class AddPriceToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :price, :string
    add_column :products, :, :integer
  end
end
