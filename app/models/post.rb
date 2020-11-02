class Post < ApplicationRecord
  has_one :attachment
  accepts_nested_attributes_for :attachment
  has_many :comments, dependent: :destroy
  # "dependent: :destroy" will delete associated comments if the post is destroyed
end
