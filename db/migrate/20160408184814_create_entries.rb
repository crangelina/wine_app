class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :wine
      t.string :picture
      t.boolean :rating
      t.text :comments

      t.timestamps null: false
    end
  end
end
