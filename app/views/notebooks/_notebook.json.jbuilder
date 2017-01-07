json.extract! notebook, :id, :title, :shelf_id, :user_id, :cover, :created_at, :updated_at
json.url notebook_url(notebook, format: :json)