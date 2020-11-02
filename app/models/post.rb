class Post < ApplicationRecord
  belongs_to :attachment
  belongs_to :comment
end
