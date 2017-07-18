json.extract! msg, :id, :content, :sender, :sent, :sent_id, :created_at, :updated_at
json.url msg_url(msg, format: :json)
