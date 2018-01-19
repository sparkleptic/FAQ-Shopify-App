json.extract! faqpost, :id, :title, :content, :created_at, :updated_at
json.url faqpost_url(faqpost, format: :json)
