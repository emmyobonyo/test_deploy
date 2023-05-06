json.extract! contactbook, :id, :name, :email, :number, :created_at, :updated_at
json.url contactbook_url(contactbook, format: :json)
