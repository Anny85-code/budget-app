class Entity < ApplicationRecord
  belongs_to :author, class_name: "User", foreign_key: 'author_id'
  # has_many :categories, dependent: :destroy
  belongs_to :category

  validates :name, presence: true
  validates :amount, presence: true, numericality: { float: true, greater_than_or_equal_to: 0 }
end
