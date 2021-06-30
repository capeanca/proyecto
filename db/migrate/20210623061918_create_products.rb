class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :color
      t.string :category
      t.float :size
      t.float :price
      t.string :store

      t.timestamps
    end
  end
end
