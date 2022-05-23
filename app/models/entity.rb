class Entity < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :groups, dependent: :destroy
end
