json.extract! post, :id, :title, :body, :likes, :reaction, :tags, :attachment_id, :comment_id, :created_at, :updated_at
json.url post_url(post, format: :json)
