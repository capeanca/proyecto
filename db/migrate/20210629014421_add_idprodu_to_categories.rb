class AddIdproduToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :idprodu, :integer
  end
end
