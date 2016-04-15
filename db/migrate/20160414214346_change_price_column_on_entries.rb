class ChangePriceColumnOnEntries < ActiveRecord::Migration
  def change
    change_column :entries, :price, :integer
  end
end
