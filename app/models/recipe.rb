class Recipe < ApplicationRecord
    has_many :ingredients, dependent: :destroy
    accepts_nested_attributes_for :ingredients

    has_many :steps, dependent: :destroy
    accepts_nested_attributes_for :steps   



    validates :title, presence: true
    validates :description, presence: true


end
