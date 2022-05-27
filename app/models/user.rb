class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :categories, foreign_key: 'author_id', dependent: :destroy
  has_many :entities, foreign_key: 'author_id', dependent: :destroy

end
