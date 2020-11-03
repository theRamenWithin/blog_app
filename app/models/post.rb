class Post < ApplicationRecord
  belongs_to :user
  has_one :attachment
  has_many :comments, dependent: :destroy
  
  accepts_nested_attributes_for :attachment
  validates :title, :body, presence: true
end
