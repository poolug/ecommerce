class Category < ApplicationRecord
  has_and_belongs_to_many :products

  belongs_to :parent, class_name: 'Category', foreign_key: :category_id, optional: :true
  has_many :children, class_name: 'Category', dependent: :destroy

  scope :all_parents, -> {where(category_id: nil)}

  scope :all_children, -> {where.not(category_id: nil)}
end
