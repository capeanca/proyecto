class Category < ApplicationRecord
    has_many :HasCategory
    has_many :product,through: :HasCategory
end
