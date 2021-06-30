class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :street
      t.integer :number
      t.integer :zipcode
      t.string :city
      t.string :country
      t.string :product

      t.timestamps
    end
  end
end
