class Post < ApplicationRecord
  has_one :attachment
  accepts_nested_attributes_for :attachment
  has_many :comments
end
