class AddTypeAndPriceToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :type, :string
    add_column :entries, :price, :decimal
  end
end
