class ChangeColumn < ActiveRecord::Migration
  def change
    change_column :entries, :price, :decimal, precision: 8, scale: 2
  end
end
