class Color < ApplicationRecord
    has_many :variants, dependent: :destroy
    has_many :products, through: :variants
end
