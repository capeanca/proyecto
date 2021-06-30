class Product < ApplicationRecord
    has_many :HasCategory
    has_many :categories, through: :HasCategory
    attr_accessor :category_elements
    def save_categories
        #category_elements [1,2,3]
        #Iterar ese arreglo
        category_elements.each do|category_id|
            # crear HasCategory HasCategory_id: 1, category_id: 2 
            HasCategory.find_or_create_by(product: self,category_id: category_id)
             
        end
    end
end
