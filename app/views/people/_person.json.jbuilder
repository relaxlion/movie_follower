json.extract! person, :id, :chinese_name, :english_name, :country_id, :gender, :birthday, :created_at, :updated_at
json.url person_url(person, format: :json)