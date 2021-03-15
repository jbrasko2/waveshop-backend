class CreateSynths < ActiveRecord::Migration[6.1]
  def change
    create_table :synths do |t|
      t.string :name
      t.string :brand
      t.string :image
      t.float :price
      t.string :short_desc
      t.text :long_desc
      t.integer :stock

      t.timestamps
    end
  end
end
