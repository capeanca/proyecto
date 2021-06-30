class AddIdcateToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :idcate, :integer
  end
end
